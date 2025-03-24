# Create a new Bitcoin address, for receiving change
WALLET=$(bitcoin-cli -regtest createwallet btrustwallet)
echo bitcoin-cli -regtest getrawchangeaddress "bech32"
