#!/bin/sh

go-wrapper download
go-wrapper install

go get github.com/tockins/realize
realize run
