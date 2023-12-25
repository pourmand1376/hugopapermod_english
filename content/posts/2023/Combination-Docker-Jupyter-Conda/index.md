---
title: A Great Combination of Jupyter + Conda + Docker
date: 2023-12-08
tags:
  - technology
  - linux
  - python
---
I've always wanted a clean local environment to install python packages in it. To me, it should have multiple requirements:

1- Installing packages should be easy enough. I mean I just want to use `pip install that` and not worry about anything else. 

2- Switching between python environments should be easy. If I happen to need multiple environments in my system, I want to be able to easily switch between them. Preferably, even without command line. 

3- I should be able to install different python version at the same time. This is because some packages need previous versions of python and using the latest version might cause some issues. 

4- Installing apt packages should be easy and independent of my OS. I do not want to mess with my operating system as others are working with it. So, it should be inside a docker image and this way I could install apt packages without causing trouble for others. 

For all of this reasons, I have combined three very good technologies, Docker and Conda and Jupyter. 

I now have Conda and Jupyter Notebook inside a Docker container. Isn't that pretty?

The code is [completely open source](https://github.com/pourmand1376/Jupyter-Docker-Conda) and available in my Github account. The image is also available [here](https://hub.docker.com/r/amirpourmand/jupyter-docker-conda) in Dockerhub. 

## Usage
To run it, just use the following command. This will download the image from DockerHub and open up a juptyer notebook inside a docker image. 
```
docker run -d \
  -p 10000:8888 \
  -v "$(pwd)":/home/user/app \
  --name my_jupyter_container \
  amirpourmand/jupyter-docker-conda
```
Now, go ahead to `localhost:10000` and you are good to go. 

Password: **docker**

> Also, note that your current folder will be mapped to container so that you would not lose your Jupyter Notebook (or other) files. 

## Install New Packages
In order to install new system packages, you need to be **root** user. There are two ways to get access to root user. 

### Recommended Way
This way works if you have a running container and you want to get access to root user. To do so:

```sh
docker exec -it -u 0 my_jupyter_container bash
```

Here, you just need to change your container name (or id) with `my_jupyter_container`. You will then have access to root user inside container. 

### Not Recommended way
If you haven't still started the container and you want to run the container as root, you can just pass `-u 0` or `--user 0` at the beginning like: 

```sh
docker run -d -u 0 \
  -p 10000:8888 \
  -v "$(pwd)":/home/user/app \
  --name my_jupyter_container \
  amirpourmand/jupyter-docker-conda
```

Why I do not recommend this way? 
Because this way you start with root and everything is created with root access. For example, if you create a simple jupyter notebook file, its access permission for read and write would be root. 

So, outside of the container (when you are done), you would need root access to copy your code and output to another place since everything is root. 

> Note that this is a docker feature and it has nothing to do with how I've implemented this thing. 

## Installing New Environment
Until here, I haven't covered anything about Conda features. 

If you want to have multiple environments (and each some different packages), you would need conda. To create a new environment, open up the terminal inside jupyter notebook and use this:

```
conda create -n my_env ipykernel -y
```
You can also specify the python version if you want any specific version:
```
conda create -n my_env ipykernel python=3.8 -y
```

And you are good to go. 

I hope this docker image helps you keep your base OS clean and tidy. 


