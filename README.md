# chef-docker-poc
Chef docker integration for a POC

Use this Dockerfile for running your chef cookbooks. Create a chef-repo folder with .chef folder with all .pem and knife.rb files and do a docker build. 

To bootstrap docker container as a chef node, follow below steps

Node1=$(docker run -d <image-name> /bin/bash)
Node-ip=$(docker inspect --format '{{ .NetworkSettings.IPAddress }}' ${Node1})
knife bootstrap $Node-ip -x root -P password1 --sudo -r 'runlist'
