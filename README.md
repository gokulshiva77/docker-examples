# docker-examples

### List Running containers
    docker ps
### List all containers
    docker ps --all / docker ps -a
### Check Docker Logs
    docker logs <3_chars_of_container_id> / <name>

### Remove Docker Images and containers

#### Remove 1 container
    docker rm -f <3chars_of_container_id> / <name>
#### Remove all containers
    docker ps -aq | xarg docker rm -f 

#### Remove Image
    docker rmi <image_name>

### Run Example to start at Shell
    docker run --rm --entrypoint sh ubuntu -c "echo 'Hello World'"

### Run Example 03_08
    docker build -t our_web_server -f web-server.Dockerfile .
    docker run -d --name our_web_server -p 5001:5000 our_web_server
    -d --> Run in Background
    <Outside Port> : <Inside Port>
    5001 --> Local Port
    5000 --> Docker Port
### Run Example to Store Output
    docker run --rm --entrypoint sh -v /tmp/container:/tmp ubuntu -c "echo 'Hello World ' > /tmp/file && cat /tmp/file"

     /tmp/container --> Local Directory, tmp --> Docker File
     <Outside File> : <Inside File>

### Pushing our image to docker hub
    Create account in https://hub.docker.com/
    docker login --> Enter ID and password
    docker tag our_web_server gokulshiva77/our_web_server:0.0.1

    *gokulshiva77 --> loginid for DockerHub*
    *0.0.1 --> tag, if empty it will take latest*

    docker push gokulshiva77/our_web_server:0.0.1

### Create Ngnix Website at port 8080
docker run --name website -v $DPWD/website:/usr/share/ngnix/html -p 8080:80 --rm ngnix