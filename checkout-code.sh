set -o allexport
source .env
set +o allexport

SOURCE_FOLDER=src

if [ ! -f $SOURCE_FOLDER ]
then
  rm -rf $SOURCE_FOLDER
fi
sleep 5
mkdir $SOURCE_FOLDER
cd $SOURCE_FOLDER
echo $SMS_API_SOURCE
git clone  -b container-api --single-branch  $SMS_API_SOURCE 
echo $SMS_UI_SOURCE
git clone  -b containerization-app --single-branch  $SMS_UI_SOURCE 
cd ..

sleep 5
echo 'Building Docker images'
sleep 3

docker compose build

echo 'spinning up the containers'
sleep 3
docker compose up

sleep 2

echo 'Check the docker console for the running containers'