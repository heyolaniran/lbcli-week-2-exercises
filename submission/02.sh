# Create a new Bitcoin address, for receiving change
bitcoin-cli -regtest createwallet btrustwallet
echo bitcoin-cli -regtest getrawchangeaddress "bech32"
