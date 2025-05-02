# docker-examples

### List Running containers
    docker ps
### List all containers
    docker ps --all / docker ps -a

### Run Example to start at Shell
    docker run --rm --entrypoint sh ubuntu -c "echo 'Hello World'"

### Run Example 03_08
    docker build -t our_web_server -f web-server.Dockerfile .

### Run Example to Store Output
    docker run --rm --entrypoint sh ubuntu -c "echo 'Hello World ' > /tmp/file && cat /tmp/file"

### Remove Docker Images and containers

#### Remove 1 container
    docker rm -f <3chars_of_container_id>

#### Remove all containers
    docker ps -aq | xarg docker rm -f 

#### Remove Image
    docker rmi <image_name>