# Create a transaction whose fee can be later updated to a higher fee if it is stuck or doesn't get mined on time

# Amount of 20,000,000 satoshis to this address: 2MvLcssW49n9atmksjwg2ZCMsEMsoj3pzUP 
# Use the UTXOs from the transaction below
RAW_TX="01000000000101c8b0928edebbec5e698d5f86d0474595d9f6a5b2e4e3772cd9d1005f23bdef772500000000ffffffff0276b4fa0000000000160014f848fe5267491a8a5d32423de4b0a24d1065c6030e9c6e000000000016001434d14a23d2ba08d3e3edee9172f0c97f046266fb0247304402205fee57960883f6d69acf283192785f1147a3e11b97cf01a210cf7e9916500c040220483de1c51af5027440565caead6c1064bac92cb477b536e060f004c733c45128012102d12b6b907c5a1ef025d0924a29e354f6d7b1b11b5a7ddff94710d6f0042f3da800000000"

# Get correct UTXO from the transaction above

RAW_DECODED=$(bitcoin-cli -regtest decoderawtransaction $RAW_TX)


TXID=$(echo $RAW_DECODED | jq -r '.txid')



VOUT_1=$(echo $RAW_DECODED | jq -r '.vout[0].n')
VOUT_2=$(echo $RAW_DECODED | jq -r '.vout[1].n')

RECIPIENT="2MvLcssW49n9atmksjwg2ZCMsEMsoj3pzUP"
SEQUENCE=1


RAW_CREATED=$(bitcoin-cli -regtest createrawtransaction "[{\"txid\":\"$TXID\",\"vout\":$VOUT_1 , \"sequence\": $SEQUENCE}, {\"txid\":\"$TXID\",\"vout\":$VOUT_2 , \"sequence\": $SEQUENCE}]" "{\"$RECIPIENT\":0.20000000}")
SIGNED_TX=$(bitcoin-cli -regtest signrawtransactionwithwallet $RAW_CREATED | jq -r '.hex')
echo $SIGNED_TX
