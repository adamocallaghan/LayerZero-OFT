# Foundry setup

1. forge init
2. git add . & git commit -m "first commit"
3. forge install layerzero-labs/layerzero-v2

# OFT contracts

4. OFT_Op.sol
5. OFT_Arb.sol

# Deploy to testnets

6. Deploy OFT_Op.sol (using Makefile)
7. Deploy OFT_Arb.sol (using Makefile)

# Wire up contracts

8. setPeer on OFT_Op.sol (using Makefile)
9. setPeer on OFT_Arb.sol (using Makefile)
10. check both peers are set using \_isPeer

# Cast to contracts

11. cast [OFT_Op.sol] "quoteSend()" <-- takes the same struct as the "send()" function
12. cast [OFT_Op.sol] "send()" <-- takes the saem struct as 11., but also a fee struct + refund address (msg.sender)
