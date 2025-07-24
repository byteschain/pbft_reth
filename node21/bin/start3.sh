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
    --p2p-secret-key=../secrets/p2pn21.hex \
    --ipcdisable \
    --txpool.max-account-slots=1000 \
    --engine.legacy-state-root \
    --trusted-peers=enode://317773ef02b314178f7164c37fe3fbcb2cc018a44b349d0e7237dc7099692b2ba7ffed83779c469a5be64b88db8726150898c5b661645b7177d50800ce14838e@127.0.0.1:30313,enode://8c85873f3e416796744fa34e02d1899e741babe2c82dac0ca2b11e1370bffe66cd59051071c8350cf543c4f185e6344fd13943f06f4b37275b28b529e2723297@127.0.0.1:30323,enode://6721224d495650cce86f39d41ebfa35cedc6980bbed373d1e89aa9d53787e78be91bb5d0f3426d41a0443e6522a6c0198a37d2ba0dc0ac875778f88fee92df24@127.0.0.1:30333,enode://5770c2cfb572ec6ae57fec8b48c47644919f9d24e73cc5aa7072ae0b7743164338136a9aa80703a5a8842f0506fceaaef561f1c87d25f6a9f0c2fdcb2b3d3356@127.0.0.1:30343,enode://0x320a32ca78074b72e9eb3b276c323e65aafdd2e37800f61d1e6e334b1baa47659f6c615b8e2695561b97e4f0819af6d542906ff15efd376f3d4da0ae934031a8@127.0.0.1:30353