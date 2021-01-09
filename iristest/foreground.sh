/opt/configure-environment.sh

# TODO: Work out a way to poll untl IRIS is really running
sleep 6

clear

docker exec -it iris iris session iris
