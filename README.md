> Development network and test contracts.

## Development Contracts Node

We provide a patched [substrate-contracts-node](https://github.com/web3labs/dev-contracts-substrate/tree/main/substrate-contracts-node) to run your test network.

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
