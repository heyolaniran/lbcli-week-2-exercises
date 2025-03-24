# Create a new Bitcoin address, for receiving change.
bitcoin-cli -regtest loadwallet btrustwallet
echo bitcoin-cli -regtest getnewaddress "change"