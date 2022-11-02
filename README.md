> Development network and test contracts.

## Development Contracts Node

We provide a patched [substrate-contracts-node](https://github.com/web3labs/dev-contracts-substrate/tree/main/substrate-contracts-node) to run your test network.

### Running

```
❯ docker run -p 9944:9944 --rm ghcr.io/web3labs/finality-contracts-node:latest
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

Now you can connect with Polkadot.js explorer to the node:
```
https://polkadot.js.org/apps/?rpc=ws%3A%2F%2F127.0.0.1%3A9944#/explorer
```

## Example Contracts

Example ink! smart contracts are stored in the folder `example-contracts/`. To be able to build the contracts, you will need:

* The WebAssembly binaryen package
* The cargo-contract command line interface

```bash
# install binaryen
sudo apt install binaryen

# install cargo-contract
cargo install dylint-link
cargo install cargo-contract --force
```

After installation is complete, build the contract inside their respective folder with the command
`cargo +nightly contract build`
