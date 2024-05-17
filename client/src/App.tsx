import { Button, Checkbox, Col, Input, Layout, List, Row, Spin } from "antd";
import React, { useEffect, useState } from "react";
import { WalletSelector } from "@aptos-labs/wallet-adapter-ant-design";
import { Aptos, AptosConfig, Network } from "@aptos-labs/ts-sdk";
import {
  useWallet,
  InputTransactionData,
} from "@aptos-labs/wallet-adapter-react";

import "@aptos-labs/wallet-adapter-ant-design/dist/index.css";
import { CheckboxChangeEvent } from "antd/es/checkbox";

const aptosConfig = new AptosConfig({ network: Network.DEVNET });
const aptos = new Aptos(aptosConfig);

type Task = {
  address: string;
  completed: boolean;
  content: string;
  task_id: string;
};

function App() {
  const [tasks, setTasks] = useState<Task[]>([]);
  const { account, signAndSubmitTransaction } = useWallet();
  const [accountHasList, setAccountHasList] = useState<boolean>(false);
  const [transactionInProgress, setTransactionInProgress] =
    useState<boolean>(false);
  const [newTask, setNewTask] = useState<string>("");
  let tokenCount = 10;

  const onWriteTask = (event: React.ChangeEvent<HTMLInputElement>) => {
    const value = event.target.value;
    setNewTask(value);
  };

  const moduleAddress =
    "0xa282746e1acea0395fb6c3dd5ca2ce6c8e6e3bb4d7eaf223ec34e4eaf543514e";

  const fetchList = async () => {
    if (!account) return [];

    try {
      const todoListResource = await aptos.getAccountResource({
        accountAddress: account?.address,
        resourceType: `${moduleAddress}::todolist::TodoList`,
      });
      setAccountHasList(true);
      const tableHandle = (todoListResource as any).tasks.handle;
      const taskCounter = (todoListResource as any).task_counter;

      let tasks = [];
      let counter = 1;
      while (counter <= taskCounter) {
        const tableItem = {
          key_type: "u64",
          value_type: `${moduleAddress}::todolist::Task`,
          key: `${counter}`,
        };
        const task = await aptos.getTableItem<Task>({
          handle: tableHandle,
          data: tableItem,
        });
        tasks.push(task);
        counter++;
      }

      setTasks(tasks);
    } catch (e: any) {
      setAccountHasList(false);
    }
  };

  const addNewList = async () => {
    if (!account) return [];
    setTransactionInProgress(true);
    const transaction: InputTransactionData = {
      data: {
        function: `${moduleAddress}::todolist::create_list`,
        functionArguments: [],
      },
    };
    try {
      const response = await signAndSubmitTransaction(transaction);
      await aptos.waitForTransaction({ transactionHash: response.hash });
      setAccountHasList(true);
    } catch (e: any) {
      setAccountHasList(false);
    } finally {
      setTransactionInProgress(false);
    }
  };

  const onTaskAdded = async () => {
    if (!account) return;
    setTransactionInProgress(true);
    const transaction: InputTransactionData = {
      data: {
        function: `${moduleAddress}::mooncoin::initialize3`,
        functionArguments: [newTask],
      },
    };

    const latestId =
      tasks.length > 0 ? parseInt(tasks[tasks.length - 1].task_id) + 1 : 1;
    const newTaskToPush = {
      address: account.address,
      completed: false,
      content: newTask,
      task_id: latestId + "",
    };

    try {
      const response = await signAndSubmitTransaction(transaction);
      await aptos.waitForTransaction({ transactionHash: response.hash });
      let newTasks = [...tasks];

      newTasks.push(newTaskToPush);

      setTasks(newTasks);
      setNewTask("");
    } catch (error: any) {
      console.log("error", error);
    } finally {
      setTransactionInProgress(false);
    }
  };

  const onCheckboxChange = async (
    event: CheckboxChangeEvent,
    taskId: string
  ) => {
    if (!account) return;
    if (!event.target.checked) return;
    setTransactionInProgress(true);
    const transaction: InputTransactionData = {
      data: {
        function: `${moduleAddress}::todolist::complete_task`,
        functionArguments: [taskId],
      },
    };

    try {
      const response = await signAndSubmitTransaction(transaction);
      await aptos.waitForTransaction({ transactionHash: response.hash });
      setTasks((prevState) => {
        const newState = prevState.map((obj) => {
          if (obj.task_id === taskId) {
            return { ...obj, completed: true };
          }
          return obj;
        });

        return newState;
      });
    } catch (error: any) {
      console.log("error", error);
    } finally {
      setTransactionInProgress(false);
    }
  };

  useEffect(() => {
    fetchList();
  }, [account?.address]);

  const onInitialize = async () => {
    if (!account) return [];
    setTransactionInProgress(true);
    const transaction: InputTransactionData = {
      data: {
        function: `${moduleAddress}::mooncoin::initialize${tokenCount}`,
        functionArguments: [`MoonCoin${tokenCount}`, `MOON${tokenCount}`],
      },
    };
    alert(transaction.data.functionArguments);
    try {
      const response = await signAndSubmitTransaction(transaction);
      await aptos.waitForTransaction({ transactionHash: response.hash });
      setAccountHasList(true);
    } catch (e: any) {
      setAccountHasList(false);
    } finally {
      setTransactionInProgress(false);
    }
  };

  const onMint = async () => {
    if (!account) return [];
    setTransactionInProgress(true);
    const transaction: InputTransactionData = {
      data: {
        function: `${moduleAddress}::mooncoin::mint${tokenCount}`,
        functionArguments: [],
      },
    };
    tokenCount++;
    try {
      const response = await signAndSubmitTransaction(transaction);
      await aptos.waitForTransaction({ transactionHash: response.hash });
      setAccountHasList(true);
    } catch (e: any) {
      setAccountHasList(false);
    } finally {
      setTransactionInProgress(false);
    }
  };

  return (
    <>
      <Layout>
        <Row align="middle">
          <Col>
            <Button
              onClick={onInitialize}
              type="primary"
              style={{ height: "40px", backgroundColor: "#3f67ff" }}
            >
              Initialize
            </Button>
            <Button
              onClick={onMint}
              type="primary"
              style={{ height: "40px", backgroundColor: "#3f67ff" }}
            >
              Mint
            </Button>
          </Col>
          {/* <Col span={10} offset={2}>
            <h1>Our todolist</h1>
          </Col>
          <Col span={12} style={{ textAlign: "right", paddingRight: "200px" }}>
            <WalletSelector />
          </Col> */}
        </Row>
      </Layout>
      {/* <Spin spinning={transactionInProgress}>
        {!accountHasList ? (
          <Row gutter={[0, 32]} style={{ marginTop: "2rem" }}>
            <Col span={8} offset={8}>
              <Input.Group compact>
                <Input
                  onChange={(event) => onWriteTask(event)}
                  style={{ width: "calc(100% - 60px)" }}
                  placeholder="Add a Task"
                  size="large"
                  value={newTask}
                />
              </Input.Group>
              <Button
                onClick={onTaskAdded}
                type="primary"
                style={{ height: "40px", backgroundColor: "#3f67ff" }}
              >
                Add
              </Button>
            </Col>
            <Col span={8} offset={8}>
              <Button
                disabled={!account}
                onClick={addNewList}
                block
                type="primary"
                style={{ height: "40px", backgroundColor: "#3f67ff" }}
              >
                Add new list
              </Button>
            </Col>
          </Row>
        ) : (
          <Row gutter={[0, 32]} style={{ marginTop: "2rem" }}>
            <Col span={8} offset={8}>
              {tasks && (
                <List
                  size="small"
                  bordered
                  dataSource={tasks}
                  renderItem={(task: any) => (
                    <List.Item
                      actions={[
                        <div>
                          {task.completed ? (
                            <Checkbox
                              onChange={(event) =>
                                onCheckboxChange(event, task.task_id)
                              }
                            />
                          ) : (
                            <Checkbox
                              onChange={(event) =>
                                onCheckboxChange(event, task.task_id)
                              }
                            />
                          )}
                        </div>,
                      ]}
                    >
                      <List.Item.Meta
                        title={task.content}
                        description={
                          <a
                            href={`https://explorer.aptoslabs.com/account/${task.address}/`}
                            target="_blank"
                          >
                            {`${task.address.slice(
                              0,
                              6
                            )}...${task.address.slice(-5)}`}
                          </a>
                        }
                      />
                    </List.Item>
                  )}
                />
              )}
            </Col>
          </Row>
        )}
      </Spin> */}
    </>
  );
}

export default App;
