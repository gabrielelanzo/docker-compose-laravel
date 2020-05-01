#!/usr/bin/env bash

if [ $# -eq 0 ] ; then
    echo "No arguments supplied. \nUse --help or -H flags to get a list of the possible commands.\n"
    exit 1
fi

case "$1" in
"--help" | "-H")
    echo "That's a script you can use in order to deal with your local environment."
    echo "Here is a list of the possible command you can use to interact with the local environment."
    echo "Example command: sh ./script.sh rebuild\n"
    echo "Available commands:"
    echo "up\t\t\t Turn on the docker environment"
    echo "down\t\t\t Turn off the docker environment"
    echo "rebuild\t\t\t Rebuild all your containers"
    echo "zshdev\t\t\t Zsh into your dev container"
    echo "bashdev\t\t\t Bash into your dev container"
    echo "bashweb\t\t\t Bash into your web container"
    echo "bashapp\t\t\t Bash into your app container"
    echo "bashdb\t\t\t Bash into your db container"
    echo "list $CONTAINER\t\t\t Lists your containers"
    exit 1
    ;;
"up")
    echo "Turning on your docker environment..."
    docker-compose up -d
    exit 1
    ;;
"down")
    echo "Turning down your docker environment..."
    docker-compose kill
    exit 1
    ;;
"rebuild")
    echo "Rebuilding your docker environment..."
    echo "Killing all the containers..."
    docker-compose kill
    echo "Rebuilding all the containers..."
    docker-compose build
    echo "Restarting all the containers..."
    docker-compose up -d
    exit 1
    ;;
"bashdev")
    echo "Opening a bash connection into your dev container..."
    docker exec -ti docker-compose-laravel_dev_1 bash
    exit 1
    ;;
"zshdev")
    echo "Opening a zsh connection into your dev container..."
    docker exec -ti docker-compose-laravel_dev_1 /bin/zsh
    exit 1
    ;;
"bashweb")
    echo "Opening a bash connection into your web container..."
    docker exec -ti docker-compose-laravel_web_1 bash
    exit 1
    ;;
"bashapp")
    echo "Opening a bash connection into your app container..."
    docker exec -ti docker-compose-laravel_app_1 bash
    exit 1
    ;;
"bashdb")
    echo "Opening a bash connection into your db container..."
    docker exec -ti docker-compose-laravel_db_1 bash
    exit 1
    ;;
"list")
    echo "Listing your docker containers..."
    docker ps
    exit 1
    ;;
*)
    echo "Invalid arguments. \nUse --help or -H flags to get a list of the possible commands.\n"
    ;;
esac
exit 1
