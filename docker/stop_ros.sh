#!/bin/bash

docker commit $(docker ps -l -q) hippo:latest



