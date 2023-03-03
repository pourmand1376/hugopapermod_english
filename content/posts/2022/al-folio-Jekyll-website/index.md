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

First, you have to clone this repository as `pourmand1376.github.io`.

Then Go to Actions Tab and Enable `GitHub Actions`.

![](enable_actions.png#center)

Then go to `Repository Settings` > `Pages`.

Choose `gh-pages` branch and root directory just like me. 

![](gh-pages.png#center)

Then you need to change `url` into `pourmand1376.github.io` and change `baseurl` into nothing! Just like this:

```yaml
url: https://pourmand1376.github.io # the base hostname & protocol for your site
baseurl: # the subpath of your site, e.g. /blog/
```

Wait for some time until Github Actions finish. It may last up to 5 minutes. 

Your website should be up and running by now! But if you want to make more changes, stay with me. 

This is to be continued ... 