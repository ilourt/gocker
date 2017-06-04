# Gocker

Gocker is a starter project using docker and golang.

There is 2 different mode:

* dev which automatically rerun the project when a file is changed

* prod which build and run the project

## Getting started

To use this to start your golang project, simply do:
```sh
$> git clone https://github.com/ilourt/gocker
```

Then feel free to add other docker services in the **docker-compose.yml**  files to suit the needs of your app.

### File structure

#### Root folder

At the root folder there are 2 docker compose files:

* **docker-compose.yml** used for development
* **docker-compose-prod.yml** used for production

#### Go folder

The folder **go** is a volume which represents the go folder of the docker image. It allows to use code autocompletion in your favorite IDE.
> With atom you could use the package [atomenv](https://atom.io/packages/atomenv) to specify the $GOPATH on a project basis

#### Src folder

The folder **src** corresponds to the folder containing the source code of your app. It the folder which will be build and run in the production mode or automatically rerun in the case of development mode. At the root of this folder there are 2 files: **start-dev.sh** and **start-prod.sh**. These files are scripts run when the docker image start, they allow to download and install dependencies and then to run the project.


## Built With

* [Docker](https://docker.com) - The linux container
* [Docker compose](https://docs.docker.com/compose/) - Util used to manage docker images
* [Golang](https://golang.org) - Language for which this project is used

## Author

**Irwin Lourtet** [https://github.com/ilourt](https://github.com/ilourt)
