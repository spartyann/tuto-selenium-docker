# Tuto Selenium Docker

Sorry my english has to be improved :)
And this is my first tuto :)

## Goal

This tutorial aims to present a way to use Selenium with Docker.

## Using this repo

Clone the repository, run the command: ./run_all.sh
And just follow the instructions.

## Tutorial video (In French - En Français)

[![Tuto video](https://img.youtube.com/vi/552d407D0-o/0.jpg)](https://youtu.be/552d407D0-o)

https://youtu.be/552d407D0-o

## Why use Selenium in Docker

The advantages of using Selenium with Docker are as follows:

* Many Selenium containers are available on the Docker Hub
* Easy activation of advanced features like video generation
* Easy integration with continuous integration tools like GitLab CI
* Usable on both a local machine and a server
* ...

## Prerequisites

Tuto made on a Debian GNU/Linux 9 (stretch)

* Docker (17.12.0-ce)
* Docker Compose (1.18.0)
* xtightvncviewer
* Scripts use **sudo** to execute docker as root

For IDE :

* JDK 1.8.0 ( aptitude install default-jdk )
* Visual Studio Code ( from official website <https://code.visualstudio.com/Download> and exec: dpkg -i code_XXXXXXX_amd64.deb )
* Extension Visual Studio Code: **markdownlint** for README editing
* Extension Visual Studio Code: **Docker** for docker file and docker-compose file editing
* Extension Visual Studio Code: **XML Tools**
* Extension Visual Studio Code: **Java Extension Pack**
