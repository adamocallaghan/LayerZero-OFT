# Foundry setup

- forge init
- git add . & git commit -m "first commit"
- forge install layerzero-labs/layerzero-v2
- git add . & git commit -m "lz contracts added"
- forge install openzeppelin-contracts/contracts
- git add . & git commit -m "oz contracts added"

# OFT contracts

- OFT_Op.sol
- OFT_Arb.sol

# Deploy to testnets

- Deploy OFT_Op.sol (using Makefile)
- Deploy OFT_Arb.sol (using Makefile)

# Wire up contracts

- setPeer on OFT_Op.sol (using Makefile)
- setPeer on OFT_Arb.sol (using Makefile)
- check both peers are set using \_isPeer

# Cast to contracts

- cast [OFT_Op.sol] "quoteSend()" <-- takes the same struct as the "send()" function
- cast [OFT_Op.sol] "send()" <-- takes the saem struct as 11., but also a fee struct + refund address (msg.sender)
