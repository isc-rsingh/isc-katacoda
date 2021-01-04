#!/bin/bash

container_image="containers.intersystems.com/intersystems/iris-community:2020.4.0.524.0"

echo "Pulling container..."
docker pull $container_image



echo "Container started!"
