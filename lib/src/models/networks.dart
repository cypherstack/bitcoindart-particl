import 'package:bitcoindart/src/models/networks.dart';

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
