# Created a SegWit address.
SEGWIT_ADDR=$(bitcoin-cli -regtest -rpcwallet=btrustwallet getnewaddress "" "bech32")
# Add funds to the address.
FUNDS=$(bitcoin-cli -regtest generatetoaddress 200 $SEGWIT_ADDR)
# Return only the Address
echo $SEGWIT_ADDR
