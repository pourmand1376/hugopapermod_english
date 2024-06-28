---
title: Azure Slack Integration
date: 2024-06-28
tags:
  - azure
  - website
  - tips
---
Recently, I wanted to have an easy way to send azure `Application Insights` notifications into Slack. 

Actually I am writing this tutorial two month after setting up this workflow and I hope I don't forget anything. This method has been working pretty good in the last couple of months. 

Note that this is mostly free and I am just using Azure Services (App Logic and Applications Insights) and [Slack Incoming Webhook](https://api.slack.com/messaging/webhooks) app (which is free).

Let's do it, step by step. 

### Step 1: Setting Up Azure Alerts

![](ApplicationInsights.png)

Create a new `Application Insight` if you don't have any. Then go into `Investigate -> Availability`. 

![](Availability.png)
Here you can add some availability tests like I've done. 

![](AvailabilityPanel.png)

Adding is also easy. You can add `Standard Test` and provide your url to test on a regular basis. 

![](CreatingStandardTest.png)

This was easy. What I wanted to do was to `Azure` inform all team developers when certain conditions are met. For example, I want to know, when a specific service is not available. 

So, In order to obtain that objective, right click on the Test that you have created and click `Open Rules Page` (if you don't see an rules, you should wait a little and try again). 

![](OpenRulesPage.png)

Azure should automatically create a certain rule for you. You can create whatever rule you want, but this one is OK in our case and this is exactly what I want. I want to be informed when this specific test has failed in `more than two locations`

![](createdRule.png)
If you click on it. You would see a page like this. You need to change the description field here. This field is what we would receive on our `azure-notifications` channel (which we will create). 

![](AlertDescriptionField.png)

### Step 2: Setting up A new Action Group
Now we want to setup a new `Action Group` so that we can specify a `webhook`. 


### Step 3: Setting Up App Logic


### Step 4 (Optional): Setting up Alert Processing Rule


This is to be continued ... 