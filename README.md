# docker-compose-laravel

## A basic Docker Compose stack for Laravel development

In this repo you can find a basic setup for Laravel development environments based on Docker Compose. I'll try to keep it updated.

## Usage

In order to fire the env run:
```
    docker-compose up -d
```

In order to run a command in a container you can run:
```
    docker exec docker-compose-laravel_{%CONTAINER-NAME%}_1 {%COMMAND%}
```

Where, 
for example if you want to run the **laravel** command in the **composer** container, you can run the following:
```
    docker exec docker-compose-laravel_composer_1 laravel
```

More instruction will be added soon.

Enjoy and feel free to fork, make suggestions and improvements.