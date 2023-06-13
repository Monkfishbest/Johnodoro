# Johnodoro



## Quick start 

Build the docker image

``` bash 
    docker build -t johnodoro .
```

Use the docker image to get a container up and running, exposing the container's port 5000 to the host machines port 5000

``` bash 
    docker run -p 5000:5000 johnodoro
```