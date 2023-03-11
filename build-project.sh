set -o allexport
source .env
set +o allexport
DETACHED_MODE=$1

bash ./checkout-code.sh

sleep 5
echo 'Building Docker images'
sleep 3

docker compose build

echo 'spinning up the containers'
sleep 3
docker compose up $DETACHED_MODE

sleep 2

echo 'Check the docker console for the running containers'
