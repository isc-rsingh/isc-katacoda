echo "Foreground start"
/opt/configure-environment.sh
docker exec -it iris iris session iris
echo "Foreground complete"
