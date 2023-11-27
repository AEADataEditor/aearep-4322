# define the repo name
repo=aearep-4322
# define your space on dockerhub
space=aeadataeditor
# define the docker repo name, ensuring lower case
dockerrepo=$(echo $space/$repo | tr [A-Z] [a-z])
# find the working directory
case $USER in
  *)
  WORKSPACE=$PWD
  ;;
  codespace)
  WORKSPACE=/workspaces
  ;;
esac
