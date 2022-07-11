docker run -d \
--name shibuya-container \
-u $(id -u astar):$(id -g astar) \
-p 30333:30333 \
-p 9933:9933 \
-p 9944:9944 \
-v "/var/lib/astar/:/data" \
staketechnologies/astar-collator:latest \
astar-collator \
--parachain-id 1000 \
--pruning archive \
--name shibuya-node \
--chain shibuya \
--execution Wasm \
--base-path /data \
--rpc-cors=all \
--unsafe-rpc-external \
--ws-external \
--state-cache-size 1