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
    --p2p-secret-key=../secrets/p2pn15.hex \
    --ipcdisable \
    --txpool.max-account-slots=1000 \
    --engine.legacy-state-root \
    --trusted-peers=enode://ac33f80e0233da6a5379a85b34795743abace73fdd30539abe0a38c0821fe3273f841dde2053e239a3358dcf7414d5cd140096767cb5c14c2ac0fbf38aabddac@127.0.0.1:30313,enode://21a0ad086ba2f49f27738444e33eb78f1185ccca614fac7edd441413d1dfb31a2c72ff0d1cd63ac68ed265b3406aa722d91c78c9ee07d3cb254fbdd6dd0702d9@127.0.0.1:30323,enode://e4cce7e02160cdffb4d5f992850789fafb9e90526c08b3b1e01287390a19f8cf7df10cda7c93a861c5f7962ac6a6f77535b6d02977d4910673f87698946226c9@127.0.0.1:30333,enode://e78ddd6f642f4d0f8770b7be2267da3e19f8f72c4df6f6a4c81c302ded26e6d8d0e3aa76be03b2eaed678412b03cbcbf9547d778313c5e540b71293ca89d14fb@127.0.0.1:30343,enode://0198135f4a607c77ecfec362f32da7fb5102b8c2690ab5c823fec275b60cfdff967dc6953caff7cd3993914fdeb4b16afdf633276bda74b971a45d627f458a20@127.0.0.1:30353,enode://73203e5f31d23d73ad4ce56cf016f59036a5f5a68b13eeb8da3bc7d3510c401d54392be06db74bd791ff64e46b2b1ab3f97b4ac3a679c3eeb46f38112dbc80a3@127.0.0.1:30363