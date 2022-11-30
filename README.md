> Development network and test contracts.

## Development Contracts Node

We provide a patched [substrate-contracts-node](https://github.com/web3labs/dev-contracts-substrate/tree/main/substrate-contracts-node) to run your test network.

### Running

Run the development node
```
docker run -p 9944:9944 --rm ghcr.io/web3labs/finality-contracts-node:latest
```
You will see an output similar to this one
```
2022-11-02 15:06:27.928  INFO main sc_cli::runner: Substrate Contracts Node
2022-11-02 15:06:27.928  INFO main sc_cli::runner: ✌️  version 0.21.0-unknown
2022-11-02 15:06:27.928  INFO main sc_cli::runner: ❤️  by Parity Technologies <admin@parity.io>, 2021-2022
2022-11-02 15:06:27.928  INFO main sc_cli::runner: 📋 Chain specification: Development
2022-11-02 15:06:27.928  INFO main sc_cli::runner: 🏷  Node name: frequent-answer-9476
2022-11-02 15:06:27.928  INFO main sc_cli::runner: 👤 Role: AUTHORITY
2022-11-02 15:06:27.928  INFO main sc_cli::runner: 💾 Database: RocksDb at /tmp/substrate2H9Oy9/chains/dev/db/full
2022-11-02 15:06:27.928  INFO main sc_cli::runner: ⛓  Native runtime: substrate-contracts-node-100 (substrate-contracts-node-1.tx1.au1)
2022-11-02 15:06:33.031  INFO main sc_rpc_server: Running JSON-RPC HTTP server: addr=127.0.0.1:9933, allowed origins=None
2022-11-02 15:06:33.031  INFO main sc_rpc_server: Running JSON-RPC WS server: addr=0.0.0.0:9944, allowed origins=None
```

Now you can connect with Polkadot.js explorer to the node
```
https://polkadot.js.org/apps/?rpc=ws%3A%2F%2F127.0.0.1%3A9944#/explorer
```

## Example Contracts

Example ink! smart contracts are stored in the folder `example-contracts/`. To build the contracts in such a way that they can be verified through the [Ink Verifier Service](https://github.com/web3labs/ink-verifier-server), check out the documentation for [generating verifiable packages](https://github.com/web3labs/ink-verifier-image/blob/main/README.md#reproducible-build).

If you want to skip the step of generating the package, you can also find generated packages in the folder `verifiable-packages/`. We have the contracts built for both Ink! 4.0.0-beta (for uploading to Rococo-Contracts parachain) and also Ink! 4.0.0-alpha.3 (for uploading to our [local testnet](#development-contracts-node))
