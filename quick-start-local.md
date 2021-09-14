
```bash
executables/polkadot build-spec --chain kusama-local --disable-default-bootnode > chain-specs/kusama-plain.json
```

```bash
executables/polkadot build-spec --chain chain-specs/kusama-plain.json --raw --disable-default-bootnode > chain-specs/kusama.json
```

```bash
executables/polkadot --alice --validator --tmp --chain chain-specs/kusama.json --port 50555 --ws-port 9944 --rpc-cors all
```

```bash
executables/polkadot --bob --validator --tmp --chain chain-specs/kusama.json --bootnodes /ip4/127.0.0.1/tcp/30333/p2p/12D3KooWSVCcxyvKj5A32PqJFTnqcvUnFNzKfmGgSBJTat2yk3f9 --port 30334 --ws-port 9955 --rpc-cors all
```