REMOTE_HOST=$(docker context ls | grep remote)
echo $REMOTE_HOST

if [ ! -n "$REMOTE_HOST" ]; then
   echo ""
   echo "The remote docker host is not configured."
   echo "Aborting the deployment."
   echo "Use the below command to add the remote host for deployment and rerun."
   echo "docker context create remote --docker ""host=ssh:\\user@remote-host"
   echo "replace the user and he remote-host accordingly."
   exit 
   echo ""
fi
echo "Building the stack on the host:"
echo "$REMOTE_HOST"
DEFAULT_CONTEXT=$(docker context show)
echo "$DEFAULT_CONTEXT"
docker context use remote
bash ./build-project.sh 
docker context use $DEFAULT_CONTEXT


