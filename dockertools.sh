#!/bin/bash
start () {
    docker run -p $2 $1
}

stop () {
    docker stop $(docker ps -q --filter ancestor=$1 )
}

status () {
    docker_container_name=$(docker ps -q --filter ancestor=$1)
    
    if [ ! -z "$docker_container_name" ] && $(docker inspect -f '{{.State.Running}}' $docker_container_name);then
    echo "CONTAINER RUNNING" 
    else 
    echo "CONTAINER NOT RUNNING"
    fi

}