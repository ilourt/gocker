# Gocker

Gocker is a starter project using docker and golang with automatic rebuild in development mode.

**Project not maintained**


## Getting started

### Prerequisites

In order to run this project you need to have Docker > 1.17.05 installed for building the production image.

### Installing
To use this to start your golang project, simply do:
```sh
$> git clone https://github.com/ilourt/gocker
```

Then feel free to add other docker services in the **docker-compose.yml**  files to suit the needs of your app.

#### Development

```sh
$> docker-compose up
```

It is possible to disable automatic rebuild in development. In order to do this simply change the value of **WATCH** to anything different than true in the **.env** file. In this case you will have to relaunch `$> docker-compose up` each time you want to rebuild.
> In case of development of **server** (like an http server) replace in *modd.conf* "prep: go run ./*.go" by :
  ```
  prep: go build -o $BIN_NAME ./*.go 
  daemon: ./$BIN_NAME
  ```

To create binary set the **BUILD** to **true** in the env file. The binary name can be customized by setting the **BIN_NAME** variable.

For dependencies management [dep](https://github.com/golang/dep) is used. Be carefful, it is now in alpha mode but must become the future official tool to manage dependencies. If you prefer you can disable it by setting the value od **GO_DEP** to false in the *.env** file.

In the Dockerfile, there is the creation of a user to create file on the disk as non root user. By default the user is *ilourt* with a UID of *1000*. You can change these values in **.env** file.

> To know the uid of your current user use the following command:`$> id `

##### Debugging

It is possible to use **delve** to debug the project. In order to use it:
* set the **DEBUG** variable to **true**
* install delve on the host
* connect delve on the host to the delve headless server running in the container
  ```sh
  $> dlv connect localhost:2345
  ```
  the port can be customized in **modd-debug.conf**. If you modify the port don't forget to update the **docker-compose.yml**.

#### Production

```sh
$> docker build -t gocker-prod:latest -f ./Dockerfile.prod .
$> docker run gocker-prod:latest
```

With the hello world example, the size of the production docker image is 5.52MB.

### File structure

The folder **go** is a volume which represents the go folder of the docker image. It allows to use code autocompletion in your favorite IDE.
> With atom you could use the package [atomenv](https://atom.io/packages/atomenv) to specify the $GOPATH on a project basis

The folder **go/src/app** corresponds to the folder containing the source code of your app. It the folder which will be automatically rerun. At the root of this folder there is a file **start.sh**. It is the script run when the docker image start, it allows to download and install dependencies and then to run the project.


## Built With

* [Docker](https://docker.com) - The linux container
* [Docker compose](https://docs.docker.com/compose/) - Util used to manage docker images
* [Golang](https://golang.org) - Language for which this project is used

## Author

**Irwin Lourtet** [https://github.com/ilourt](https://github.com/ilourt)  (<dev@ilourt.com>)

Thanks to people on [reddit](https://redd.it/6f6lil) who helps me improve it.
