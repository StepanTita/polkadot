# Relay chain

```bash
executables/polkadot build-spec --chain rococo-local --disable-default-bootnode > chain-specs/rococo-custom-plain.json
```

```bash
executables/polkadot build-spec --chain chain-specs/rococo-custom-plain.json --raw --disable-default-bootnode > chain-specs/rococo-custom.json
```

```bash
executables/polkadot --alice --validator --base-path /tmp/relay/alice --chain chain-specs/rococo-custom.json --port 50555 --ws-port 9944 --rpc-cors all
```

```bash
executables/polkadot --bob --validator --base-path /tmp/relay-bob --chain chain-specs/rococo-custom.json --bootnodes /ip4/127.0.0.1/tcp/30333/p2p/12D3KooW9vyzrLvQckTpG9NPZYpUf9wtSeiBg7zTyDJLY77gYpdP --port 30334 --ws-port 9955 --rpc-cors all
```

# Parachain

```bash
executables/moonbeam build-spec --chain moonbeam-local --disable-default-bootnode > chain-specs/moonbeam-custom-plain.json
```

```bash
executables/moonbeam build-spec --chain chain-specs/moonbeam-custom-plain.json --raw --disable-default-bootnode > chain-specs/moonbeam-custom.json
```

```bash
executables/moonbeam export-genesis-state --chain moonbeam-local --parachain-id 2000 > chain-specs/moonbeam-2000-genesis
```

```bash
executables/moonbeam export-genesis-wasm --chain moonbeam-local > chain-specs/moonbeam-2000-wasm
```

```bash
executables/moonbeam --chain moonbeam-local --alice --collator --force-authoring --parachain-id 2000 --base-path /tmp/parachain/alice --port 40333 --ws-port 9945 --rpc-cors all -- --execution wasm --chain chain-specs/rococo-custom.json --port 30343 --ws-port 9977 --rpc-cors all
```

```bash
executables/moonbeam purge-chain --dev -y
```

```bash
executables/moonbeam \
    --chain moonbeam-local \ 
    --bob \
    --collator \
    --force-authoring \
    --parachain-id 2000 \
    --bootnodes /ip4/127.0.0.1/tcp/30333/p2p/12D3KooWEzuCFC1C7AMyLjY27YnmR185bhBRBovrFcs3UpqHQvJc \
    --port 40334 \
    --ws-port 9946 \
    --tmp \
    -- \
    --execution wasm \
    --chain chain-specs/rococo-custom.json \
    --port 30344 \
    --ws-port 9978 \
    --bootnodes /ip4/127.0.0.1/tcp/30333/p2p/12D3KooWQ6Sf2WgaqZCGjZSoKxLDdu4FJLBQckUej2V8jafMMUx1
```