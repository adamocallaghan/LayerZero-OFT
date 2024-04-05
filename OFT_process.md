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

- Deploy OFT_Sepolia.sol
- Deploy OFT_Mumbai.sol

# Wire up contracts

- setPeer on OFT_Sepolia.sol
- setPeer on OFT_Mumbai.sol
- check both peers are set using \_isPeer

# Set Options

- setEnforcedOptions

# Cast to contracts

- cast [OFT_Op.sol] "quoteSend()"
- cast [OFT_Op.sol] "send()"
