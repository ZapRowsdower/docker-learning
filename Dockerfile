# Every container is built upon other containers (public)
# Start with the public ubuntu container
FROM ubuntu
# use linux package manager to install python3 in ubuntu
RUN apt-get upgrade && apt-get update && apt-get install -y python3