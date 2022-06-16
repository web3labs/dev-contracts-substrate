> Development network and test contracts.

## Development Contracts Node

To install all the packages required for a Substrate node, follow the instructions [here](https://docs.substrate.io/tutorials/v3/create-your-first-substrate-chain/#install-required-packages)

To learn more about running a private network, check out [this tutorial](https://docs.substrate.io/tutorials/v3/private-network/)
or just run `scripts/run-private-network.sh`

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
