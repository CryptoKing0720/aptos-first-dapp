module coin::mooncoin {
	use std::signer;
	struct MoonCoin {}
	struct MoonCoin1 {}
	struct MoonCoin2 {}
	struct MoonCoin3 {}
	struct MoonCoin4 {}
	struct MoonCoin5 {}
	struct MoonCoin6 {}
	struct MoonCoin7 {}
	struct MoonCoin8 {}
	struct MoonCoin9 {}
	struct MoonCoin10 {}
	struct MoonCoin11 {}
	struct MoonCoin12 {}
	struct MoonCoin13 {}
	struct MoonCoin14 {}
	struct MoonCoin15 {}
	struct MoonCoin16 {}
	struct MoonCoin17 {}
	struct MoonCoin18 {}
	struct MoonCoin19 {}
	struct MoonCoin20 {}
	struct MoonCoin21 {}
	struct MoonCoin22 {}
	struct MoonCoin23 {}
	struct MoonCoin24 {}
	struct MoonCoin25 {}
	struct MoonCoin26 {}
	struct MoonCoin27 {}
	struct MoonCoin28 {}
	struct MoonCoin29 {}
	struct MoonCoin30 {}
	struct MoonCoin31 {}
	struct MoonCoin32 {}
	struct MoonCoin33 {}
	struct MoonCoin34 {}
	struct MoonCoin35 {}
	struct MoonCoin36 {}
	struct MoonCoin37 {}
	struct MoonCoin38 {}
	struct MoonCoin39 {}
	struct MoonCoin40 {}
	struct MoonCoin41 {}
	struct MoonCoin42 {}
	struct MoonCoin43 {}
	struct MoonCoin44 {}
	struct MoonCoin45 {}
	struct MoonCoin46 {}
	struct MoonCoin47 {}
	struct MoonCoin48 {}
	struct MoonCoin49 {}
	struct MoonCoin50 {}
	struct MoonCoin51 {}
	struct MoonCoin52 {}
	struct MoonCoin53 {}
	struct MoonCoin54 {}
	struct MoonCoin55 {}
	struct MoonCoin56 {}
	struct MoonCoin57 {}
	struct MoonCoin58 {}
	struct MoonCoin59 {}
	struct MoonCoin60 {}
	struct MoonCoin61 {}
	struct MoonCoin62 {}
	struct MoonCoin63 {}
	struct MoonCoin64 {}
	struct MoonCoin65 {}
	struct MoonCoin66 {}
	struct MoonCoin67 {}
	struct MoonCoin68 {}
	struct MoonCoin69 {}
	struct MoonCoin70 {}
	struct MoonCoin71 {}
	struct MoonCoin72 {}
	struct MoonCoin73 {}
	struct MoonCoin74 {}
	struct MoonCoin75 {}
	struct MoonCoin76 {}
	struct MoonCoin77 {}
	struct MoonCoin78 {}
	struct MoonCoin79 {}
	struct MoonCoin80 {}
	struct MoonCoin81 {}
	struct MoonCoin82 {}
	struct MoonCoin83 {}
	struct MoonCoin84 {}
	struct MoonCoin85 {}
	struct MoonCoin86 {}
	struct MoonCoin87 {}
	struct MoonCoin88 {}
	struct MoonCoin89 {}
	struct MoonCoin90 {}
	struct MoonCoin91 {}
	struct MoonCoin92 {}
	struct MoonCoin93 {}
	struct MoonCoin94 {}
	struct MoonCoin95 {}
	struct MoonCoin96 {}
	struct MoonCoin97 {}
	struct MoonCoin98 {}
	struct MoonCoin99 {}
	struct MoonCoin100 {}
	const TOTAL_SUPPLY: u64 = 1_000_000_000_000_000; // 1 billion

	fun init_module(sender: &signer) {
		aptos_framework::managed_coin::initialize<MoonCoin>(
			sender,
			b"Moon Coin",
			b"MOON",
			6,
			false,
		);
	}

	public entry fun initialize(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin1>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin>(), 0);
	}

	public entry fun mint(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize1(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin1>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin1>(), 0);
	}

	public entry fun mint1(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin1>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin1>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize2(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin2>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin2>(), 0);
	}

	public entry fun mint2(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin2>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin2>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize3(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin3>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin3>(), 0);
	}

	public entry fun mint3(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin3>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin3>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize4(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin4>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin4>(), 0);
	}

	public entry fun mint4(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin4>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin4>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize5(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin5>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin5>(), 0);
	}

	public entry fun mint5(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin5>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin5>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize6(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin6>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin6>(), 0);
	}

	public entry fun mint6(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin6>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin6>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize7(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin7>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin7>(), 0);
	}

	public entry fun mint7(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin7>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin7>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize8(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin8>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin8>(), 0);
	}

	public entry fun mint8(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin8>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin8>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize9(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin9>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin9>(), 0);
	}

	public entry fun mint9(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin9>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin9>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize10(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin10>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin10>(), 0);
	}

	public entry fun mint10(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin10>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin10>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize11(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin11>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin11>(), 0);
	}

	public entry fun mint11(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin11>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin11>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize12(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin12>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin12>(), 0);
	}

	public entry fun mint12(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin12>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin12>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize13(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin13>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin13>(), 0);
	}

	public entry fun mint13(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin13>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin13>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize14(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin14>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin14>(), 0);
	}

	public entry fun mint14(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin14>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin14>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize15(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin15>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin15>(), 0);
	}

	public entry fun mint15(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin15>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin15>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize16(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin16>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin16>(), 0);
	}

	public entry fun mint16(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin16>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin16>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize17(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin17>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin17>(), 0);
	}

	public entry fun mint17(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin17>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin17>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize18(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin18>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin18>(), 0);
	}

	public entry fun mint18(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin18>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin18>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize19(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin19>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin19>(), 0);
	}

	public entry fun mint19(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin19>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin19>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize20(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin20>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin20>(), 0);
	}

	public entry fun mint20(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin20>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin20>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize21(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin21>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin21>(), 0);
	}

	public entry fun mint21(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin21>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin21>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize22(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin22>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin22>(), 0);
	}

	public entry fun mint22(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin22>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin22>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize23(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin23>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin23>(), 0);
	}

	public entry fun mint23(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin23>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin23>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize24(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin24>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin24>(), 0);
	}

	public entry fun mint24(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin24>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin24>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize25(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin25>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin25>(), 0);
	}

	public entry fun mint25(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin25>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin25>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize26(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin26>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin26>(), 0);
	}

	public entry fun mint26(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin26>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin26>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize27(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin27>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin27>(), 0);
	}

	public entry fun mint27(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin27>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin27>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize28(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin28>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin28>(), 0);
	}

	public entry fun mint28(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin28>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin28>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize29(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin29>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin29>(), 0);
	}

	public entry fun mint29(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin29>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin29>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize30(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin30>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin30>(), 0);
	}

	public entry fun mint30(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin30>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin30>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize31(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin31>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin31>(), 0);
	}

	public entry fun mint31(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin31>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin31>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize32(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin32>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin32>(), 0);
	}

	public entry fun mint32(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin32>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin32>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize33(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin33>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin33>(), 0);
	}

	public entry fun mint33(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin33>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin33>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize34(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin34>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin34>(), 0);
	}

	public entry fun mint34(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin34>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin34>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize35(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin35>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin35>(), 0);
	}

	public entry fun mint35(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin35>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin35>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize36(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin36>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin36>(), 0);
	}

	public entry fun mint36(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin36>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin36>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize37(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin37>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin37>(), 0);
	}

	public entry fun mint37(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin37>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin37>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize38(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin38>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin38>(), 0);
	}

	public entry fun mint38(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin38>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin38>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize39(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin39>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin39>(), 0);
	}

	public entry fun mint39(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin39>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin39>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize40(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin40>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin40>(), 0);
	}

	public entry fun mint40(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin40>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin40>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize41(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin41>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin41>(), 0);
	}

	public entry fun mint41(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin41>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin41>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize42(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin42>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin42>(), 0);
	}

	public entry fun mint42(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin42>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin42>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize43(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin43>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin43>(), 0);
	}

	public entry fun mint43(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin43>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin43>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize44(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin44>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin44>(), 0);
	}

	public entry fun mint44(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin44>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin44>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize45(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin45>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin45>(), 0);
	}

	public entry fun mint45(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin45>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin45>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize46(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin46>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin46>(), 0);
	}

	public entry fun mint46(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin46>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin46>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize47(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin47>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin47>(), 0);
	}

	public entry fun mint47(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin47>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin47>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize48(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin48>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin48>(), 0);
	}

	public entry fun mint48(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin48>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin48>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize49(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin49>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin49>(), 0);
	}

	public entry fun mint49(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin49>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin49>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize50(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin50>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin50>(), 0);
	}

	public entry fun mint50(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin50>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin50>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize51(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin51>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin51>(), 0);
	}

	public entry fun mint51(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin51>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin51>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize52(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin52>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin52>(), 0);
	}

	public entry fun mint52(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin52>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin52>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize53(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin53>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin53>(), 0);
	}

	public entry fun mint53(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin53>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin53>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize54(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin54>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin54>(), 0);
	}

	public entry fun mint54(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin54>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin54>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize55(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin55>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin55>(), 0);
	}

	public entry fun mint55(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin55>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin55>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize56(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin56>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin56>(), 0);
	}

	public entry fun mint56(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin56>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin56>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize57(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin57>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin57>(), 0);
	}

	public entry fun mint57(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin57>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin57>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize58(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin58>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin58>(), 0);
	}

	public entry fun mint58(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin58>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin58>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize59(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin59>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin59>(), 0);
	}

	public entry fun mint59(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin59>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin59>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize60(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin60>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin60>(), 0);
	}

	public entry fun mint60(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin60>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin60>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize61(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin61>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin61>(), 0);
	}

	public entry fun mint61(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin61>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin61>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize62(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin62>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin62>(), 0);
	}

	public entry fun mint62(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin62>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin62>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize63(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin63>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin63>(), 0);
	}

	public entry fun mint63(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin63>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin63>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize64(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin64>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin64>(), 0);
	}

	public entry fun mint64(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin64>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin64>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize65(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin65>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin65>(), 0);
	}

	public entry fun mint65(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin65>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin65>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize66(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin66>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin66>(), 0);
	}

	public entry fun mint66(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin66>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin66>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize67(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin67>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin67>(), 0);
	}

	public entry fun mint67(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin67>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin67>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize68(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin68>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin68>(), 0);
	}

	public entry fun mint68(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin68>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin68>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize69(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin69>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin69>(), 0);
	}

	public entry fun mint69(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin69>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin69>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize70(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin70>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin70>(), 0);
	}

	public entry fun mint70(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin70>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin70>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize71(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin71>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin71>(), 0);
	}

	public entry fun mint71(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin71>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin71>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize72(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin72>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin72>(), 0);
	}

	public entry fun mint72(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin72>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin72>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize73(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin73>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin73>(), 0);
	}

	public entry fun mint73(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin73>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin73>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize74(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin74>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin74>(), 0);
	}

	public entry fun mint74(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin74>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin74>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize75(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin75>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin75>(), 0);
	}

	public entry fun mint75(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin75>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin75>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize76(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin76>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin76>(), 0);
	}

	public entry fun mint76(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin76>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin76>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize77(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin77>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin77>(), 0);
	}

	public entry fun mint77(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin77>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin77>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize78(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin78>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin78>(), 0);
	}

	public entry fun mint78(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin78>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin78>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize79(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin79>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin79>(), 0);
	}

	public entry fun mint79(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin79>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin79>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize80(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin80>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin80>(), 0);
	}

	public entry fun mint80(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin80>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin80>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize81(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin81>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin81>(), 0);
	}

	public entry fun mint81(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin81>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin81>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize82(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin82>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin82>(), 0);
	}

	public entry fun mint82(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin82>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin82>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize83(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin83>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin83>(), 0);
	}

	public entry fun mint83(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin83>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin83>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize84(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin84>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin84>(), 0);
	}

	public entry fun mint84(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin84>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin84>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize85(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin85>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin85>(), 0);
	}

	public entry fun mint85(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin85>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin85>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize86(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin86>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin86>(), 0);
	}

	public entry fun mint86(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin86>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin86>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize87(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin87>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin87>(), 0);
	}

	public entry fun mint87(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin87>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin87>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize88(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin88>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin88>(), 0);
	}

	public entry fun mint88(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin88>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin88>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize89(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin89>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin89>(), 0);
	}

	public entry fun mint89(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin89>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin89>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize90(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin90>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin90>(), 0);
	}

	public entry fun mint90(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin90>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin90>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize91(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin91>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin91>(), 0);
	}

	public entry fun mint91(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin91>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin91>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize92(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin92>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin92>(), 0);
	}

	public entry fun mint92(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin92>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin92>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize93(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin93>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin93>(), 0);
	}

	public entry fun mint93(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin93>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin93>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize94(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin94>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin94>(), 0);
	}

	public entry fun mint94(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin94>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin94>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize95(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin95>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin95>(), 0);
	}

	public entry fun mint95(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin95>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin95>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize96(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin96>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin96>(), 0);
	}

	public entry fun mint96(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin96>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin96>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize97(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin97>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin97>(), 0);
	}

	public entry fun mint97(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin97>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin97>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize98(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin98>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin98>(), 0);
	}

	public entry fun mint98(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin98>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin98>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize99(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin99>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin99>(), 0);
	}

	public entry fun mint99(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin99>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin99>(sender, sender_addr, TOTAL_SUPPLY);
	}

	public entry fun initialize100(sender: &signer, name: vector<u8>, ticker: vector<u8>) {
		aptos_framework::managed_coin::initialize<MoonCoin100>(
			sender,
			name,
			ticker,
			6,
			true
		);
		assert!(aptos_framework::coin::is_coin_initialized<MoonCoin100>(), 0);
	}

	public entry fun mint100(sender: &signer) {
		aptos_framework::managed_coin::register<MoonCoin100>(sender);
		let sender_addr = signer::address_of(sender);
		aptos_framework::managed_coin::mint<MoonCoin100>(sender, sender_addr, TOTAL_SUPPLY);
	}

}
