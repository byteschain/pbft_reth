#!/bin/sh
# --chain: mainnet goerli sepolia holesky dev or genesis.json file


#rm -rf /datas/dev1
#rm -rf /logs/dev1

RUST_LOG=info ./reth node \
    --datadir=../datas/ \
    --chain=./genesis.json \
    --http \
    --http.api=admin,net,eth,web3,txpool,rpc,reth,debug,trace,ots \
    --http.corsdomain=* \
    --http.addr=0.0.0.0 \
    --http.port=8545 \
    --ws \
    --ws.addr=0.0.0.0 \
    --ws.port=8546 \
    --ws.origins=* \
    --ws.api=net,eth \
    --port=30313 \
    --disable-discv4-discovery \
    --enable-discv5-discovery \
    --discovery.v5.addr=0.0.0.0 \
    --discovery.v5.port=9001 \
    --authrpc.port=8551 \
    --authrpc.addr=0.0.0.0 \
    --authrpc.jwtsecret=../secrets/jwt.hex \
    --log.file.directory=../logs/ \
    --log.file.filter=info \
    --p2p-secret-key=../secrets/p2pn13.hex \
    --ipcdisable \
    --txpool.max-account-slots=1000 \
    --engine.legacy-state-root \
    --trusted-peers=enode://5424ff1b43592f6fc44915ef3e77c97833f11d6b73cbb0edf4b091fac6f9f9b772737ed71852ff8c07f91d970a8deeb5e22d77e50231507de43fe40203661969@3.1.238.67:30313,enode://fdbe984156b1be54b4240890dd9e06193a85cfa2a0fd3841211771eece962ae482441df76869cdb101d6bf10fd643434757add48d38905d9d680bbb367118a99@3.1.238.67:30323,enode://841738029ca124b02c6a741e6bd322cc3794364810de5e7dd51274479c144a78b3532260f53a008f8e90690752121435c1fbea7fcf0058e68f50654c8ca4080a@3.1.238.67:30333,enode://6af52e120e5f1477a1bab07ea2d55b0e7906e6664c0a09499f9140a7c4c5b7eb0aa7e8e24531485a57ae66dc8d50fb35fdc36bb837eb1e4bf472fd7d5c8116b1@3.1.238.67:30343,enode://205aa7c4a84ae8c2fb87aa9d910c0089efec29e7b315900d1b28965e07d9cdfd37c92173aaafa10ddea093b9a7d7711d6003a21385dc40a435677f590f534c80@3.1.238.67:30353,enode://55890d021ca144e2ab0f4ef94b1512196d1c643b20302edf0456ce377d655278d6c84d68a58691a8b907e38fc032fa2fecca69a1c828fe144302ffd972617acb@3.1.238.67:30363