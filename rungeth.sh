usernameid=$(id -un)
localvolume="/Users/${usernameid}/docker/volumes/geth"
mkdir -p ${localvolume}
docker run -d --restart=always -p 8545:8545 -p 30303:30303 -v ${localvolume}:/root/.ethereum ethereum/client-go --rpc --rpcaddr "0.0.0.0" --gcmode=archive --syncmode full
