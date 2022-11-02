# This is the build stage for Substrate. Here we create the binary.
FROM docker.io/paritytech/ci-linux:production as builder

WORKDIR /substrate
COPY . /substrate
RUN cargo build --release

# This is the 2nd stage: a very small image where we copy the Substrate binary."
FROM docker.io/library/ubuntu:20.04
COPY --from=builder /substrate/target/release/substrate-contracts-node /usr/local/bin

EXPOSE 9933:9933
EXPOSE 9944:9944

ENTRYPOINT [ "substrate-contracts-node" ]
CMD [ "--ws-external" ]
