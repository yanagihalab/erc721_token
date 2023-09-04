# erc721_token

## Todo First

- [Download brave-browser](https://brave.com/ja/download/)

- [Install brave-browser](https://brave.com/linux/#release-channel-installation)

- [Install Metamask](https://prismyc.com/metamask-brave-install/)

- [Install IPFS](https://spotlight.soy/detail?article_id=7y3gwvfhk)

- Install truffle, openzeppelin, and ganache

```
$ sudo npm install -g truffle@5.5.2

$ npm install openzeppelin-solidity@2.3.0

$ npm install truffle-hdwallet-provider@1.0.17

$ sudo npm install -g ganache-cli@6.12.2

```



## Upload contents to IPFS

- Prepare images and metadata like [this](https://github.com/fujihalab/erc721_token/tree/main/chibanny_data)



## Deploy contracts

- [openzeppelin-solidity](https://github.com/athiwatp/openzeppelin-solidity/tree/master/contracts/token/ERC721)


- Install related softwares

```
$ npm install
```


- Compile solidity programs

```
$ truffle compile
```


- Deploy contracts

```
$ truffle migrate --network ropsten

```


- The output is like this:

```
Compiling your contracts...
===========================
> Everything is up to date, there is nothing to compile.
WARNING: Ganache forking only supports EIP-1193-compliant providers. Legacy support for send is currently enabled, but will be removed in a future version _without_ a breaking change. To remove this warning, switch to an EIP-1193 provider. This error is probably caused by an old version of Web3's HttpProvider (or ganache < v7)


Migrations dry-run (simulation)
===============================
> Network name:    'ropsten-fork'
> Network id:      3
> Block gas limit: 29971701 (0x1c954f5)


1_initial_migration.js
======================

   Deploying 'Migrations'
   ----------------------
   > block number:        12584014
   > block timestamp:     1657714839
   > account:             0x3d5E61c1Bc6e882478ec3b6f814e7C95bEe7928a
   > balance:             1.013519156746623378
   > gas used:            236270 (0x39aee)
   > gas price:           5 gwei
   > value sent:          0 ETH
   > total cost:          0.00118135 ETH

   -------------------------------------
   > Total cost:          0.00118135 ETH


2_deploy_contracts.js
=====================

   Deploying 'ChibannyToken'
   -------------------------
   > block number:        12584016
   > block timestamp:     1657714845
   > account:             0x3d5E61c1Bc6e882478ec3b6f814e7C95bEe7928a
   > balance:             0.999125601746623378
   > gas used:            2832943 (0x2b3a2f)
   > gas price:           5 gwei
   > value sent:          0 ETH
   > total cost:          0.014164715 ETH

   -------------------------------------
   > Total cost:         0.014164715 ETH

Summary
=======
> Total deployments:   2
> Final cost:          0.015346065 ETH




Starting migrations...
======================
> Network name:    'ropsten'
> Network id:      3
> Block gas limit: 30000000 (0x1c9c380)


1_initial_migration.js
======================

   Deploying 'Migrations'
   ----------------------
   > transaction hash:    0x89bfe32c95c2cc246e222487affd11994dbdf6e4b2b5387db821d4b163516d2c
   > Blocks: 1            Seconds: 21
   > contract address:    0x2af8361FC4C7a4018b8c9a5Fe148776c34796C21
   > block number:        12584020
   > block timestamp:     1657714872
   > account:             0x3d5E61c1Bc6e882478ec3b6f814e7C95bEe7928a
   > balance:             1.013519156746623378
   > gas used:            236270 (0x39aee)
   > gas price:           5 gwei
   > value sent:          0 ETH
   > total cost:          0.00118135 ETH

   > Saving migration to chain.
   > Saving artifacts
   -------------------------------------
   > Total cost:          0.00118135 ETH


2_deploy_contracts.js
=====================

   Deploying 'ChibannyToken'
   -------------------------
   > transaction hash:    0x19432e7d1691946b2b396621bb013b65cedd9b7a510cd3887032ceafade42989
   > Blocks: 1            Seconds: 9
   > contract address:    0xb3bE509DDF865b66b22afeC37Eda3E4015528C43
   > block number:        12584023
   > block timestamp:     1657714908
   > account:             0x3d5E61c1Bc6e882478ec3b6f814e7C95bEe7928a
   > balance:             10.999125601746623378
   > gas used:            2832943 (0x2b3a2f)
   > gas price:           5 gwei
   > value sent:          0 ETH
   > total cost:          0.014164715 ETH

   > Saving migration to chain.
   > Saving artifacts
   -------------------------------------
   > Total cost:         0.014164715 ETH

Summary
=======
> Total deployments:   2
> Final cost:          0.015346065 ETH


```



## Mint ERC721-type NFT

```
$ truffle console --network ropsten
```


```
truffle(ropsten)> ChibannyToken.address
'0xb3bE509DDF865b66b22afeC37Eda3E4015528C43'

truffle(ropsten)> cit = await ChibannyToken.deployed()
undefined


truffle(ropsten)> cit.name()
'Chibanny Token'

truffle(ropsten)> cit.symbol()
'CIT'

```

- [Contract address: 0xb3bE509DDF865b66b22afeC37Eda3E4015528C43](https://ropsten.etherscan.io/token/0xb3be509ddf865b66b22afec37eda3e4015528c43)


- mint 14 tokens

```
truffle(ropsten)> cit.mint('https://ipfs.io/ipfs/QmT9Wi2NMzkBrVybebGWw9BsRn7H7DSYvcTd2eSRnQxwzH')

truffle(ropsten)> cit.mint('https://ipfs.io/ipfs/QmPbkZbs8DYy9H5achCZ2SBnzgAQVEyuoRw74grTn8PqpB')

truffle(ropsten)> cit.mint('https://ipfs.io/ipfs/QmWTUEjaVotpc6hK2DNHPnDNWHxG3pLPCTy9Hxqi9x4Lce')

truffle(ropsten)> cit.mint('https://ipfs.io/ipfs/QmWNgKyzMua6oCqs2VRt3nwmENw1fT3n6k6Q6SftjHXRHc')

truffle(ropsten)> cit.mint('https://ipfs.io/ipfs/QmVbew7Zbq1fJPFeF9hNSRxV6ZfJKvn2QaXUZ9W9LsJMUR')

truffle(ropsten)> cit.mint('https://ipfs.io/ipfs/QmTyrGePy4jwPQP1TSmQfJvYXPYtmX7havp7Zdz4nvAnCN')

truffle(ropsten)> cit.mint('https://ipfs.io/ipfs/QmWcPvYyDQP7995XZL8kTiGToJLRkomyENYWEcykeyNzkt')

truffle(ropsten)> cit.mint('https://ipfs.io/ipfs/QmWkM6mdeY42x6nHY5RdFvct31LgEDS5aWWJuXRuc3Tsd1')

truffle(ropsten)> cit.mint('https://ipfs.io/ipfs/QmRN4FsvTXVm31ux28SQ3MRpdidNhQvM4vmxshtgzyHiQf')

truffle(ropsten)> cit.mint('https://ipfs.io/ipfs/QmXnfkwNNLzpgjfyGnv4R6jtJZzGVsPFbNAZzxXW1JNp9P')

truffle(ropsten)> cit.mint('https://ipfs.io/ipfs/QmWdc2kUuKGMYuodF2mVZA4nHgqmAWM2uwxmTAjSLqC5ZH')

truffle(ropsten)> cit.mint('https://ipfs.io/ipfs/QmSzCB4FkRDNvo5JY8mtup9V47ixcBG9GBCX1VofeQw6Je')

truffle(ropsten)> cit.mint('https://ipfs.io/ipfs/QmW8ReGVToJpn4KjbdPMebsn9KXvpaevr4cUyyr8873iwY')

truffle(ropsten)> cit.mint('https://ipfs.io/ipfs/Qmc16MnhW4E2LNsdH1B59kCyW2JwGF5PQjF7Lme3jLoNgW')

```


- Check tokens

```

truffle(ropsten)> cit.totalSupply()
BN { negative: 0, words: [ 14, <1 empty item> ], length: 1, red: null }


truffle(ropsten)> cit.getChibanny(0)
'https://ipfs.io/ipfs/QmT9Wi2NMzkBrVybebGWw9BsRn7H7DSYvcTd2eSRnQxwzH'


```


## Check Metamask

- [Add a contract address and token ID to Metamask](https://hexanft.com/metamaskerc721/)

- [Try transfer tokens using Metamask](https://metamask.zendesk.com/hc/ja/articles/360058961911-NFT%E3%82%92%E9%80%81%E4%BF%A1-%E5%8F%97%E4%BF%A1-%E5%A3%B2%E5%8D%B4%E3%81%99%E3%82%8B%E6%96%B9%E6%B3%95%E3%81%AF-)



