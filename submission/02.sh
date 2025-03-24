# Create a new Bitcoin address, for receiving change
bitcoin-cli -regtest createwallet btrustwallet
bitcoin-cli -regtest getnewaddress "" "bech32"