#!/bin/sh
# --chain: mainnet goerli sepolia holesky dev or genesis.json file

#rm -rf /datas/dev3
#rm -rf /logs/dev3

RUST_LOG=info ./reth node \
    --datadir=../datas/ \
    --chain=./genesis.json \
    --http \
    --http.api=admin,net,eth,web3,txpool,rpc,reth,debug,trace,ots \
    --http.corsdomain=* \
    --http.addr=0.0.0.0 \
    --http.port=8565 \
    --ws \
    --ws.addr=0.0.0.0 \
    --ws.port=8566 \
    --ws.origins=* \
    --ws.api=net,eth \
    --port=30333 \
    --disable-discv4-discovery \
    --enable-discv5-discovery \
    --discovery.v5.addr=0.0.0.0 \
    --discovery.v5.port=9003 \
    --authrpc.port=8571 \
    --authrpc.addr=0.0.0.0 \
    --authrpc.jwtsecret=../secrets/jwt.hex \
    --log.file.directory=../logs/ \
    --log.file.filter=info \
    --p2p-secret-key=../secrets/p2pn9.hex \
    --ipcdisable \
    --txpool.max-account-slots=1000 \
    --engine.legacy-state-root \
    --trusted-peers=enode://023fe24053d0ef8d5b5cdaa25afdfbc7c2439801798a70cd63c5a0ebe327f9c293f57a1ad874c3ae40f93da7ae07f0e7344779ffaac84f12bdbb61735a7a65b9@127.0.0.1:30313,enode://18c116f88ff47400f0184d4381454a87c7624c5aa98c1530370c0a4350edff97d3189aff6e560eb6c82c79bac7f4b7710cbfd86865b433d9af42799cd69da387@127.0.0.1:30323,enode://b2841f7319837feb4d5f8b65aeee4222958271aedc7573ab22dc15ea21f1ebb217e2833a5f94310591d7c70c2ecd153276102113c610bfd906a77551ec0eeaee@127.0.0.1:30333,enode://fa390f92144d4e205c1f5436f8e77723bccf67283b6a263a07550bf55ff5ceeeb73192d5eef55d129b773c7374209420fbd139de5b7fae9a3f72d059975a4890@127.0.0.1:30343,enode://432a211c248ae96be245c54d38d6b1ac2af0a19003b7b80c2f83cbeee3708eb5ae2b779c9ce837a10d4bea38c05273c6f6d508633cb68e50dc45a837bdeb4471@127.0.0.1:30353,enode://d6364327145fc9d8bbeeb61068d91edde043adb4a1d21575ee4b210b061f4c567942ab58709462f69b2b82a06b445158c12f42f883dd8a2cd36caf7f9634e124@127.0.0.1:30363