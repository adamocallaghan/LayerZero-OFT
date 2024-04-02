-include .env

# Deploy contracts to Sepolia & Mumbai testnets
deploy-oft-to-sepolia:
	forge create src/OFT_Sepolia.sol:OFT_Sepolia --rpc-url $(SEPOLIA_RPC_URL) --private-key $(PRIVATE_KEY)

deploy-oft-to-mumbai:
	forge create src/OFT_Mumbai.sol:OFT_Mumbai --rpc-url $(MUMBAI_RPC_URL) --private-key $(PRIVATE_KEY)

# Set Peers on deployed Sepolia & Mumbai contracts
set-peer-on-sepolia-contract:
	cast send $(SEPOLIA_OFT_ADDRESS) "setPeer(uint32,bytes32)" 40109 $(MUMBAI_OFT_ADDRESS) --rpc-url $(SEPOLIA_RPC_URL) --private-key $(PRIVATE_KEY)

set-peer-on-mumbai-contract:
	cast send $(MUMBAI_OFT_ADDRESS) "setPeer(uint32,bytes32)" 40161 $(SEPOLIA_OFT_ADDRESS) --rpc-url $(MUMBAI_RPC_URL) --private-key $(PRIVATE_KEY)

# Send message from Sepolia to Mumbai
send-message-from-sepolia-to-mumbai:
	cast send $(SEPOLIA_OMNIMESSAGE_ADDRESS) "send(string)" hello --rpc-url $(SEPOLIA_RPC_URL) --private-key $(PRIVATE_KEY) --value 12345678gwei

# Call 'data' on Mumbai contract to see our message
get-message-from-mumbai-contract:
	cast call $(MUMBAI_OMNIMESSAGE_ADDRESS) "data()(string)" --rpc-url $(MUMBAI_RPC_URL)