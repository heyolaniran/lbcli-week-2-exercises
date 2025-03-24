# Create a new Bitcoin address, for receiving change
WALLET=$(bitcoin-cli -regtest createwallet btrustwallet)
LOAD=$(bitcoin-cli -regtest loadwallet btrustwallet)
bitcoin-cli -regtest  getrawchangeaddress "bech32"
