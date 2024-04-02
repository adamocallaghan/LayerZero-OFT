# Foundry setup

- forge init
- git add . & git commit -m "first commit"
- forge install layerzero-labs/layerzero-v2
- git add . & git commit -m "lz contracts added"
- forge install openzeppelin-contracts/contracts
- git add . & git commit -m "oz contracts added"

# OFT contracts

- OFT_Sepolia.sol
- OFT_Mumbai.sol

# Deploy to testnets

- Deploy OFT_Sepolia.sol (using Makefile)
- Deploy OFT_Mumbai.sol (using Makefile)

# Wire up contracts

- setPeer on OFT_Sepolia.sol (using Makefile)
- setPeer on OFT_Mumbai.sol (using Makefile)
- check both peers are set using \_isPeer

# Cast to contracts

- cast [OFT_Op.sol] "quoteSend()" <-- takes the same struct as the "send()" function
- cast [OFT_Op.sol] "send()" <-- takes the saem struct as 11., but also a fee struct + refund address (msg.sender)
