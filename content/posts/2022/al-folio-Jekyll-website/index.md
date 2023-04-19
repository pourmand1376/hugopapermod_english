---
title: A Guide to setup your own jekyll website (al-folio Theme)
date: 2022-11-08T00:25:00.000+00:00
description: How to build your own website and host it online for free
comments: true
tags: [website]
---

Here I want to guide you toward setting a Jekyll website with al-folio template. This is the template I am using for my website and I love it. I have also made some contributions to make it more usable. 

> You do not need to install Jekyll, Docker, Ruby or even clone the repo in order to build and publish a website. You can do it all online and not even bother installing any of them. 

## Install Al-folio on GitHub Pages

For this tutorial, I use my real GitHub username `pourmand1376`. You should replace all with yours!

First, you have to clone this repository as `pourmand1376.github.io` (if not you can change its name later). Make sure to check `only master branch` when forking as you do not need other branches. 

Then Go to Actions Tab and Enable `GitHub Actions`.

![](enable_actions.png#center)
Then you need to change `url` into `pourmand1376.github.io` and change `baseurl` into nothing! Just like this:

```yaml
url: https://pourmand1376.github.io # the base hostname & protocol for your site
baseurl: # the subpath of your site, e.g. /blog/
```

Wait for some time until Github Actions finish. You can go to `Actions` tab and see its progress. Here, we only need `Deploy` Action to pass. Other actions are not important for now. 

Wait some time as it may last up to 5 minutes. 

Now, you should have `gh-pages` branch (deploy action will create it). Go to main page of your repository and check it.  

Then go to `Repository Settings` > `Pages`.

Choose `gh-pages` branch and root directory just like me. 

![](gh-pages.png#center)

Now, Github actions will try to build `Page Build and Deployment Action`. If it is successful your website should be up and running in 10 minutes. 

This is because once after all actions, there is a bot called `github-pages`. It should grab the generated website and publish it and sometimes you have to wait for sometime for your changes to take effect.

You can check status of `github-pages` using Environments Section of your github repository. 
![](ghpages-action.png)

> If you have problems, make sure that both of your Github Actions are successful. Make sure branch is set to `gh-pages` and also check your website url and baseurl. These are some most common problems people have in `Jekyll` websites. 

if you want to make more changes, stay with me. 

This is to be continued ... 