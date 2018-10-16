#!/bin/bash

# Install dependencies
go mod init $MODULE

# Exec command specify in docker run or docker-compose.yml
exec "$@"