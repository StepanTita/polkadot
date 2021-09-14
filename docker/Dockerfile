FROM paritytech/ci-linux:production
LABEL description="This is the build stage for Polkadot. Here we create the binary."

ARG PROFILE=release
WORKDIR /polkadot

COPY . /polkadot

RUN cargo build --$PROFILE

