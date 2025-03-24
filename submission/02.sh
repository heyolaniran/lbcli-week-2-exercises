# Create a new Bitcoin address, for receiving change.
bitcoin-cli loadwallet btrustwallet
echo bitcoin-cli -regtest getnewaddress "change"