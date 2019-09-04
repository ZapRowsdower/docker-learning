# Creating Docker containers for Adobe Experience Manager
From: https://www.dlighthouse.co/2018/08/creating-docker-containers-aem.html, https://www.youtube.com/watch?v=wCTTHhehJbU

## My Notes
* `/aem-docker-yt-mg/author$ docker run -p 4502:4502 author` - runs an author docker container and binds the localhost machine's 4502 port to the container's AEM instance 4502 port
* `/aem-docker-yt-mg/publish$ docker run -p 4503:4503 publish` - runs an author docker container and binds the localhost machine's 4503 port to the container's AEM instance 4503 port
* `/aem-docker-yt-mg/$ docker-compose up` - launches author, publish, and dispatcher containers using the [docker-compose.yml](./docker-compose.yml) file defined in this directory.

## TODOs:
* Whats the best way to get authored content on these containers?
* `$ docker-compose up` appeared to launch all the containers but I could only visit the publish and dispatcher instances using localhost in my browser. However, if I launched it like so, it worked: 
    * `$ docker run -p 4502:4502 author`
    * Since we're building auth and pub from one quickstart.jar, it may be causing problems. We should try instead to have an author and publish .jar file in separate folders like we do manually now
* Run a Maven build to these containers