# Gocker

Gocker is a starter project using docker and golang with automatic rebuild in development mode.


## Getting started

### Prerequisites

In order to run this project you need to have Docker > 1.17.05 installed for building the production image.

### Installing
To use this to start your golang project, simply do:
```sh
$> git clone https://github.com/ilourt/gocker
```

Then feel free to add other docker services in the **docker-compose.yml**  files to suit the needs of your app.

**Development**

```sh
$> docker-compose up
```

**Production**

```sh
$> docker build -t gocker-prod:lates -f ./Dockerfile.prod .
$> docker run gocker-prod:latest
```

With the hello world example, the size of the production docker image is 5.52MB.

### File structure

#### Go folder

The folder **go** is a volume which represents the go folder of the docker image. It allows to use code autocompletion in your favorite IDE.
> With atom you could use the package [atomenv](https://atom.io/packages/atomenv) to specify the $GOPATH on a project basis

#### Src folder

The folder **src** corresponds to the folder containing the source code of your app. It the folder which will be automatically rerun. At the root of this folder there is a file **start.sh**. It is the script run when the docker image start, it allows to download and install dependencies and then to run the project.


## Built With

* [Docker](https://docker.com) - The linux container
* [Docker compose](https://docs.docker.com/compose/) - Util used to manage docker images
* [Golang](https://golang.org) - Language for which this project is used

## Author

**Irwin Lourtet** [https://github.com/ilourt](https://github.com/ilourt)

Thanks to people on [reddit](https://redd.it/6f6lil) who helps me improve it.
