echo "Foreground start"
/opt/configure-environment.sh
sleep 10
docker exec -it iris iris session iris
echo "Foreground complete"
