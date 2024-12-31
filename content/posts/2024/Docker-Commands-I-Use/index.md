---
title: Docker Commands I use on a daily basis
tags:
  - terminal
  - tips
  - software
date: 2024-11-29
---
I've been using docker for years. And there are multiple commands which have been very useful to me.

To me, Docker is one of the most innovative creations of all the time. I see it as basically the best way to release software. 

The upside is that once you set a Dockerfile and built a package, you don't have to worry about whether the system dependencies are installed correctly or not. 

So, Production environment would be **the same** as development environment.

The downside is that currently it can not be used with GUI applications. 

Before starting, I would like to say that I don't like using `docker run` and I always prefer `docker compose` versions. So, you wouldn't see many docker run commands (Converting between these two is also a breeze, just ask Claude or ChatGPT). 

> If you don't have docker installed, you can install it via [this link](https://docs.docker.com/engine/install/). Specifically for ubuntu, I always use [this](https://docs.docker.com/engine/install/ubuntu/)  and [this](https://docs.docker.com/engine/install/linux-postinstall/).  
> Also, for mac users, I recommend using docker via [orbstack](https://orbstack.dev/) as default docker desktop is so slow and sluggish. 

Here's a list of commands I use frequently:
## Managing Services Commands
```bash
docker compose up -d
```
I would say that this is the single most useful command ever. It runs all the services defined in compose file. 

If you want to only run a specific service, use:
```bash
docker compose up <service_name> -d
docker compose up api -d
```

Similarly, to bring down all services:
```bash
docker compose down
```

Note that container data would be ERASED this way. You should have saved the data beforehand via volume or other ways. Otherwise, you would lose all of the data. 

Also, sometimes you don't have the image and you want to build it. So, you use:

```bash
docker compose build
```

## Status Commands
I use this to see which docker containers are currently being run in the system. First one shows all containers, and the second one shows only the containers that are related to current folder. 

```bash
docker ps
docker compose ps
```

To see how much CPU, RAM and resources each container is using:

```bash
docker stats
```

Sometimes, docker uses a lot of disk space. You can analyze it to see exact information. If you want to remove caches or unused images, you can use this:

```bash
docker system df
```

I would add `-v` to above command to see more information, things like: Size of Each Image, size of each container, size of each volume and cache size. 

To make some space you can use these commands([How to clear Docker cache and free up space on your system](https://depot.dev/blog/docker-clear-cache)):

```bash
docker image prune # deletes unused imaeges
docker container prune # deletes unused containers
docker volume prune # delete unused volumes
docker buildx prune # delete build cache
docker system prune # delete all above (use with caution)
```

## Debugging Services Commands
Most of the time, the containers don't cause any problems. But sometimes, you want to go inside the container or see the logs. Here's how you can do it. 

You have two ways in these scenarios. 

**First** is to use `docker ps` and then grab the container ID of the service you want to debug (it would be something like 5658c55f2240).

Then to see the logs:
```
docker logs container_id 
docker logs 5658c55f2240 (first letters would be enough)
docker logs container_id -f
```

And to go inside the container, use:
```bash
docker exec -it container_id /bin/sh
docker exec -it container_id sh
docker exec -it container_id bash
```
Almost all containers have `sh` installed, so first one would almost always work.

But As I prefer bash, I just type bash and It would bring me a bash shell if possible. 

 The `-it` flag is also needed. It tells the docker that we want interactive shell. Not just to run a command and go our way. 

**Second** is to use `docker compose`. This way is easier but only works if you've run the service with compose

To see logs just go to the folder and say:
```bash
docker compose logs -f
```
It would show the logs for all containers inside current folder. 

To go inside container, use:
```bash
docker compose exec -it <service_name> sh
docker compose exec -it <service_name> bash
```

Just in the case of service name, see inside of your `docker-compose` via `cat docker-compose.yaml` and grab the service name. It should be exactly under services.

## Conclusion
These are the commands which I use in 99% of the time and It basically solves all my needs. Of course, I could use search if I want to handle more complicated scenarios, but this ones should be enough to get you up and running. 
 
If you are looking to learn docker I highly recommend these tutorials:
- [Docker Tutorial for Beginners - YouTube](https://www.youtube.com/watch?v=pTFZFxd4hOI)
- [Complete Docker Course - From BEGINNER to PRO! (Learn Containers)](https://www.youtube.com/watch?v=RqTEHSBrYFw)

Here is also a great list of docker resource to learn from. 
- [Nane Kratzke | Valuable Docker Links](http://nane.kratzke.pages.mylab.th-luebeck.de/about/blog/2014/08/24/valuable-docker-links/)