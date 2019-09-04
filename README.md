# docker-learning
Learning how to Docker

## Useful Links
* https://www.youtube.com/watch?v=JprTjTViaEA
* https://www.netcentric.biz/insights/2017/08/aem-and-docker.html

## AEM Docker Resources/Examples:
* https://github.com/drginm/docker-boilerplates/tree/master/005-adobe-experience-manager
* https://www.linkedin.com/pulse/running-aem-docker-satendra-singh/
* http://snip.ly/f6w2v#https://cqdump.wordpress.com/2017/06/20/aem-and-docker-a-question-of-state/
* https://www.netcentric.biz/insights/2017/08/aem-and-docker.html
* https://github.com/remcorakers/aem-docker-getting-started
* https://github.com/jimfrenette/aem-docker
* https://www.youtube.com/watch?v=7vBrN53HkoQ
* https://www.dlighthouse.co/2018/08/creating-docker-containers-aem.html

## Useful Commands

```bash
# see which version of docker you have installed
docker --version

# will attempt to run a docker image called hello-world and download from a repo if it doesn't exist: https://hub.docker.com/_/hello-world
docker run hello-world

# Monitor running and exited docker instances
docker ps -a

# start a docker container w/ custom name using the 'hello-world' container type
docker run --name zaps-hello-world hello-world

# Assign name and allocate pseudo-TTY (--name, -it)
# Then get the ubuntu container from the docker hub
# Then open bash in that ubuntu container once it has been downloaded
# https://hub.docker.com/_/ubuntu
docker run -it --name my-linux-container ubuntu bash

# Terminal into a running container
docker exec -it [container-id] bash

# exit a running image
exit

# See all downloaded/installed docker images
docker images

# Remove any docker images which have exited (note, this will *not* remove the downloaded docker images)
docker rm $(docker ps -a -f status=exited -q)

# Link local data to a running container, and remove it from the docker process list once it has exited
docker run -it --name my-linux-container --rm -v /Local/Data/Path:/container/data/path ubuntu bash

docker run -it --name my-linux-container --rm -v '/c/Users/SnappyZappy/Desktop/Doom Shit':/snappy-zappy ubuntu bash
```

## Make Custom Image

```dockerfile
# Every container is built upon other containers (public)
# Start with the public ubuntu container
FROM ubuntu
CMD echo "Hello Jonny"
```

```bash
cd path/to/Dockerfile &&
# Build your custom image using the Dockerfile created above (. refers to the Dockerfile)
docker build -t zaps-ubuntu-image .
```
You should get the following:
```bash
Sending build context to Docker daemon  61.95kB
# Step 1 is grabbing Ubuntu
Step 1/2 : FROM ubuntu
 ---> a2a15febcdf3
 # Step 2: Here's our custom command from our Dockerfile
Step 2/2 : CMD echo "Hello Jonny"
 ---> Running in d17512516c6b
Removing intermediate container d17512516c6b
 ---> e8bde1b99708
Successfully built e8bde1b99708
Successfully tagged zaps-ubuntu-image:latest
```

Now lets add some software to the ubuntu image by modifying the Dockerfile
```dockerfile
FROM ubuntu
RUN apt-get upgrade && apt-get update && apt-get install -y python3
```
Now rebuild the image:
```bash
docker build -t zaps-ubuntu-image .
```

Then run the image:
```bash
docker run -it zaps-ubuntu-image
```
Once the image is online, you should be able to run python 3 from the cmd line

## Cleanup Images
```bash
# Stop all running images
docker stop $(docker ps -q)
```
https://www.digitalocean.com/community/tutorials/how-to-remove-docker-images-containers-and-volumes
