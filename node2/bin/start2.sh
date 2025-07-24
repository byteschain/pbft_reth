#!/bin/sh
# --chain: mainnet goerli sepolia holesky dev or genesis.json file

#rm -rf /datas/dev2
#rm -rf /logs/dev2

RUST_LOG=info ./reth node \
    --datadir=../datas/ \
    --chain=./genesis.json \
    --http \
    --http.api=admin,net,eth,web3,txpool,rpc,reth,debug,trace,ots \
    --http.corsdomain=* \
    --http.addr=0.0.0.0 \
    --http.port=8555 \
    --ws \
    --ws.addr=0.0.0.0 \
    --ws.port=8556 \
    --ws.origins=* \
    --ws.api=net,eth \
    --port=30323 \
    --disable-discv4-discovery \
    --enable-discv5-discovery \
    --discovery.v5.addr=127.0.0.1 \
    --discovery.v5.port=9002 \
    --authrpc.port=8561 \
    --authrpc.addr=0.0.0.0 \
    --authrpc.jwtsecret=../secrets/jwt.hex \
    --log.file.directory=../logs/ \
    --log.file.filter=info \
    --p2p-secret-key=../secrets/p2pn2.hex \
    --ipcdisable \
    --txpool.max-account-slots=1000 \
    --engine.legacy-state-root \
    --trusted-peers=enode://b7d12852d68f0cad4e1efb6991f9752b2f613cc0d72af9d957d7a2c5a556ad622db4fb816f9486fabd5adf419660fa2daef1ab62c795817b8141da0d37b5431d@127.0.0.1:30313,enode://ad89ff5b6a0e7a1f6696b3ecf65d441a87926025f9225ca8a2221704555d20baf361ff15137e348244b1a159127249ad30d47537017198f39f8f2c319e3f3b4d@127.0.0.1:30323,enode://6f018e818fd38178b6d4b7d8791b307ea77b296cd97a4a85ad0969e76caae686e3ee19c5e9dc20640fbc5e72701ab1d0fdafa7bde3dffe9a6b55c20e3a81581f@127.0.0.1:30333,enode://5a2e3569dbc90d58863e355b166a49597c9916279ddd1c773469bdd98bce1e99d67578d556994d177d83abf08ac04c0ba8fbce90b5da4b46824e06a73106c100@127.0.0.1:30343,enode://6e8a4117c0ec25470b508c9b8eef85899e07d642d105f8fc2f11fd9373adac8a93fb964040e6cabcbb179febe3bb00afb7e5ffa3efa7e36a88716ff703c0e44b@127.0.0.1:30353,enode://1252aa61a313bcce1b8cf0ef1368078e93a26ce41da53e0c9a1f7c1340130be4704da2122b4cea1a0e5159fa48d7ebea591fa29fd3c603a72f80811a09ae9115@127.0.0.1:30363