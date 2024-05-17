const fs = require("fs");

function generateMoonCoinCode(init_value, numCoins) {
  let i;
  let code = `module coin::mooncoin {\n`;
  code += `\tuse std::signer;\n`;
  code += `\tstruct MoonCoin {}\n`;
  for (i = init_value; i < init_value + numCoins; i++) {
    code += `\tstruct MoonCoin${i} {}\n`;
  }
  code += `\tconst TOTAL_SUPPLY: u64 = 1_000_000_000_000_000; // 1 billion\n\n`;

  code += `\tfun init_module(sender: &signer) {\n`;
  code += `\t\taptos_framework::managed_coin::initialize<MoonCoin>(\n`;
  code += `\t\t\tsender,\n`;
  code += `\t\t\tb"Moon Coin",\n`;
  code += `\t\t\tb"MOON",\n`;
  code += `\t\t\t6,\n`;
  code += `\t\t\tfalse,\n`;
  code += `\t\t);\n`;
  code += `\t}\n\n`;

  code += `\tpublic entry fun initialize(sender: &signer, name: vector<u8>, ticker: vector<u8>) {\n`;
  code += `\t\taptos_framework::managed_coin::initialize<MoonCoin1>(\n`;
  code += `\t\t\tsender,\n`;
  code += `\t\t\tname,\n`;
  code += `\t\t\tticker,\n`;
  code += `\t\t\t6,\n`;
  code += `\t\t\ttrue\n`;
  code += `\t\t);\n`;
  code += `\t\tassert!(aptos_framework::coin::is_coin_initialized<MoonCoin>(), 0);\n`;
  code += `\t}\n\n`;

  code += `\tpublic entry fun mint(sender: &signer) {\n`;
  code += `\t\taptos_framework::managed_coin::register<MoonCoin>(sender);\n`;
  code += `\t\tlet sender_addr = signer::address_of(sender);\n`;
  code += `\t\taptos_framework::managed_coin::mint<MoonCoin>(sender, sender_addr, TOTAL_SUPPLY);\n`;
  code += `\t}\n\n`;

  for (i = init_value; i < init_value + numCoins; i++) {
    code += `\tpublic entry fun initialize${i}(sender: &signer, name: vector<u8>, ticker: vector<u8>) {\n`;
    code += `\t\taptos_framework::managed_coin::initialize<MoonCoin${i}>(\n`;
    code += `\t\t\tsender,\n`;
    code += `\t\t\tname,\n`;
    code += `\t\t\tticker,\n`;
    code += `\t\t\t6,\n`;
    code += `\t\t\ttrue\n`;
    code += `\t\t);\n`;
    code += `\t\tassert!(aptos_framework::coin::is_coin_initialized<MoonCoin${i}>(), 0);\n`;
    code += `\t}\n\n`;

    code += `\tpublic entry fun mint${i}(sender: &signer) {\n`;
    code += `\t\taptos_framework::managed_coin::register<MoonCoin${i}>(sender);\n`;
    code += `\t\tlet sender_addr = signer::address_of(sender);\n`;
    code += `\t\taptos_framework::managed_coin::mint<MoonCoin${i}>(sender, sender_addr, TOTAL_SUPPLY);\n`;
    code += `\t}\n\n`;
  }

  code += `}\n`;

  return code;
}

// Generate code for 100 MoonCoin structs and their functions
const generatedCode = generateMoonCoinCode(1, 100);

function writeFile(data) {
  fs.writeFile("../../move/sources/mooncoin.move", generatedCode, (err) => {
    if (err) {
      console.error(`Error create or write file ${err}`);
    } else {
      console.log(`File create and write successfully`);
    }
  });
}

writeFile(generatedCode);
