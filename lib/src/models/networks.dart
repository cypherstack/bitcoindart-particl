class NetworkType {
  String messagePrefix;
  String? bech32;
  Bip32Type bip32;
  int pubKeyHash;
  int scriptHash;
  int wif;

  NetworkType(
      {required this.messagePrefix,
      this.bech32,
      required this.bip32,
      required this.pubKeyHash,
      required this.scriptHash,
      required this.wif});

  @override
  String toString() {
    return 'NetworkType{messagePrefix: $messagePrefix, bech32: $bech32, bip32: ${bip32.toString()}, pubKeyHash: $pubKeyHash, scriptHash: $scriptHash, wif: $wif}';
  }
}

class Bip32Type {
  int public;
  int private;

  Bip32Type({required this.public, required this.private});

  @override
  String toString() {
    return 'Bip32Type{public: $public, private: $private}';
  }
}

final particl = NetworkType(
    messagePrefix: '\x18Bitcoin Signed Message:\n',
    bech32: 'pw',
    bip32: Bip32Type(public: 0x696e82d1, private: 0x8f1daeb8),
    pubKeyHash: 0x38,
    scriptHash: 0x3c,
    wif: 0x6c);

final particltestnet = NetworkType(
    messagePrefix: '\x18Bitcoin Signed Message:\n',
    bech32: 'tpw',
    bip32: Bip32Type(public: 0xe1427800, private: 0x04889478),
    pubKeyHash: 0x76,
    scriptHash: 0x7a,
    wif: 0x2e);
