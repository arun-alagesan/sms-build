
SOURCE_FOLDER=src

if [ ! -f $SOURCE_FOLDER ]
then
  rm -rf $SOURCE_FOLDER
fi
sleep 5
mkdir $SOURCE_FOLDER
cd $SOURCE_FOLDER
echo $SMS_API_SOURCE
git clone  -b main --single-branch  $SMS_API_SOURCE 
echo $SMS_UI_SOURCE
git clone  -b master --single-branch  $SMS_UI_SOURCE 
echo $CAL_API_SOURCE
git clone  -b main --single-branch  $CAL_API_SOURCE 
cd ..

