/opt/configure-environment.sh

until [ "`/usr/bin/docker inspect -f {{.State.Running}} iris`"=="true" ]; do
    sleep 0.1;
done;

docker exec -it iris iris session iris
