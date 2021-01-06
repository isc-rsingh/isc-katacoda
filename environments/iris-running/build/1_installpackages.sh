systemctl stop docker
sed -i -e 's/"storage-driver": "overlay",/"storage-driver": "overlay2",/' /etc/docker/daemon.json
systemctl start docker
