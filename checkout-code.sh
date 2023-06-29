
SOURCE_FOLDER=src

if [ ! -f $SOURCE_FOLDER ]
then
  rm -rf $SOURCE_FOLDER
fi
sleep 5
mkdir $SOURCE_FOLDER
cd $SOURCE_FOLDER
echo $SMS_API_SOURCE
git clone  -b main --depth 1 --single-branch  $SMS_API_SOURCE sms-spacemgmt-ms
echo $SMS_UI_SOURCE
git clone  -b main --depth 1 --single-branch  $SMS_UI_SOURCE pixelKube
echo $CAL_API_SOURCE
git clone  -b master --depth 1 --single-branch  $CAL_API_SOURCE CalendarService
cd ..

