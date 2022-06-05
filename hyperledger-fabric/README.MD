# Hyperledger Fabric Setup


## 1. Setup Fabric Docker containers

### 1.1 Download the Containers
```shell
install-fabric.sh docker sample
```
### 1.2 Setup blockchain Network 

Hyperledger Fabric Network with 2 Orgs (1 Peer each) 1 Orderer and 3 CA's and default channels

```shell
cd test-network
network.sh up createChannel -c mychannel -ca
```
## 2. Deploy the Smart Contract

### 2.1 Deploy Java Chain Code

```shell
network.sh deployCC -ccn basic -ccp ../asset-transfer-basic/chaincode-java -ccl java
```
### 2.2 Set Fabric Bin Path

```shell
```

### 2.3 Set Env Vars for Org 1

```shell
```

## Test the Contract

### 3.1 Initialize the Ledger 

```shell
```

### 3.2 Query the Ledger 

```shell
```

### 3.3 Transfer the Asset from Person A to Person B

```shell
```

### 3.4 Query the Ledger to check the new Asset Owner 

```shell
```

