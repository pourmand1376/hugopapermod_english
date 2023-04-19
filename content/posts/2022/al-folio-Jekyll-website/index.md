---
title: A Guide to setup your own jekyll website (al-folio Theme)
date: 2022-11-08T00:25:00.000+00:00
description: How to build your own website and host it online for free
comments: true
tags: [website,jekyll, al-folio, github-pages]
---

Here I want to guide you toward setting a Jekyll website with `al-folio` template. This is the template I am using for my website and I love it. I have also made some contributions to make it more usable (specially on docker side).  

> You do not need to install Jekyll, Docker, Ruby or even clone the repo in order to build and publish a website. You can do it all online and not even bother installing any of them. 


## Step 1
For this tutorial, I use my a GitHub organization called `al-folio`. You should replace all with yours!

First, you have to clone this repository as `al-folio.github.io` (if you have already clone, just rename it to what I've said). Make sure to check `only master branch` when forking as you do not need other branches. 

Then Go to Actions Tab and Enable `GitHub Actions`.

![](enable_actions.png#center)
Then you need to change `url` into `al-folio.github.io` and change `baseurl` into nothing! Just like this:

```yaml
url: https://al-folio.github.io # the base hostname & protocol for your site
baseurl: # the subpath of your site, e.g. /blog/
```

Wait for some time until Github Actions finish. You can go to `Actions` tab and see its progress. Here, we only need `Deploy` Action to pass. Other actions are not important for now. 

Wait some time as it may last up to 5 minutes. 

Now, you should have `gh-pages` branch (deploy action will create it). Go to main page of your repository and check it.  

## Step 2
Now, go to `Repository Settings` > `Pages`.

Choose `gh-pages` branch and root directory just like me. 

![](gh-pages.png#center)

Now, Github actions will try to build `Page Build and Deployment Action`. If it is successful your website should be up and running in 10 minutes. 

Why 10 minutes?
After performing all the required actions, the `github-pages` bot comes into play. Its primary function is to fetch the newly generated website and publish it to the web. However, in some cases, there might be a delay before your changes become visible to others.

## Debug! 
You can check status of `github-pages` using Environments Section of your github repository. For example, here it says that `9ebc1c9` commit was deployed successfully by github pages. You can check this commit to the latest commit in `gh-pages` branch. 
![](ghpages-action.png)
![](deployment_status.png)
You can also see from `gh-pages` branch that `9ebc1c9` is the last commit. It says that this was generated from `5d3f650` commit from master branch. This can become handy if you have problem and you do not know where is the source of the problem. 
![](ghpages-branch-information.png)


> If you have problems, make sure that both of your Github Actions are successful. Make sure branch is set to `gh-pages` and also check your website url and baseurl. These are some most common problems people have in `Jekyll` websites. 

## Summarize
To summerize the blog, two steps occur when publishing the website:

- First, `Deploy` Action deploys your `master` branch to `gh-pages`. It generates raw html and css. No jekyll here. 
- Second, Page Build and Deployment Action makes your `gh-pages` branch ready for publish. But It doesn't really publish it until `gh-pages bot` decides so! 

if you want to make more changes, stay with me. 

This is to be continued ... 

