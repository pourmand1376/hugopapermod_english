---
title: How to Sync Obsidian between Android, Windows and Mac via GIT
date: 2023-01-16T00:00:00.000+00:00
description: How I use git to Sync my obsidian notes seamlessly between all operating systems?
tags: [obsidian]
---

# Introduction
I've tried many tools and tutorials to sync my obsidian notes between android and windows. They all have the same problems:
1. Some need subscription service (Obsidian Sync) which I'm not willing to pay
2. Some can't handle editing the same file (Sync via GoogleDrive, Dropbox and ...)
3. Others need complicated setup and maintanance. 

# My Solution
This solution takes about 30 minutes to setup. But, once it is finished, it workes perfectly. 

## Initial Setup
1. Create a Github or Gitlab Repository (Make sure it is `private`)
2. Clone your repository to a place in your computer
3. Open that folder as a vault in obsidian
4. You can also move your current obsidian notes to this folder (in case you have any).

## Sync Windows and Mac
For windows and mac, you can just install `obsidian-git` plugin. Installing that would be a breeze. Just make sure to set automatic pull and push (I've set it to 5 minutes). 

I've pinned these three commands since sometimes I want to instantly sync my changes. 
Obsidian > Options > Command Pallete > Pinned Commands

- Obsidian Git: Commit all changes
- Obsidian Git: Push
- Obsidian Git: Pull

[GitHub - denolehov/obsidian-git: Backup your Obsidian.md vault with git](https://github.com/denolehov/obsidian-git)
Also, here is the repo if you want to check it out. 

### Extra Option for windows users
 Note that if you are using windows, you should also use this command to prevent path error on odd filenames ([+](https://stackoverflow.com/questions/63727594))
```
git config core.protectNTFS false
```

## Automatic Merging
Sometimes you may change the same file. I know it is rare but it is possible. We prevent conflict by two ways (gitignore and gitattributes).

These files need to be created at the root of your directory (where `.git` folder resides).
```
touch .gitignore
touch .gitattributes
```
First, You should add these lines to `.gitignore`:
```
.trash/
.obsidian/workspace
.obsidian/workspace.json
.obsidian/workspace-mobile.json
.obsidian/app.json
```
This tells git to ignore certain files that are likely to cause conflicts, like recently opened files.

Next, you'll add the `.gitattributes` file and tell git how to handle merging for specific file types. For example, you can tell git to treat markdown files as regular text files and merge them accordingly:
```
*.md merge=union
```
What this does is it instructs git to merge markdown files as if they were plain text. This way, the only time you'll get conflicts is when you change the same line in both files, which is pretty unlikely.

In case you have previously committed `workspace.json` and other mentioned gitignore files into git, you should remove them using the following commands (If you are not sure, it wouldn't hurt to run these commands):

```bash
git rm --cached .obsidian/workspace
git rm --cached .obsidian/workspace.json
git rm --cached .obsidian/workspace-mobile.json
git rm --cached .obsidian/app.json
git commit -am "Remove gitignore files"
```

## Sync Android
For this part, I used [this tutorial](https://gist.github.com/Makeshift/43c7ecb3f1c28a623ea4386552712114) for the most part: 
To Use Git on Android:
- First, you'll need to download and install the Termux app from the Google Play Store ([Termux – Apps on Google Play](https://play.google.com/store/apps/details?id=com.termux&hl=en_GB&gl=US)). Once you have it installed, open the app and run the following commands 
```
apt update
apt upgrade -y
pkg install openssh -y
pkg install git -y
termux-setup-storage
```
These commands will update your Termux installation, install the necessary packages for Git, and set up your storage so you can access your files.
- Next, you'll need to add your Git configurations. Run the following commands:
```
git config --global credential.helper store
git config --global user.email "<your_email>"
git config --global user.name "<The name you want on your commits>"
git config --global pull.rebase false
git config --global --add safe.directory '*'
```
Replace `<your_email>` and `<The name you want on your commits>` with your own information.

- Now you're ready to clone a repository. Use the following command:
```
# go to the path in your shared folder
cd storage/downloads
mkdir obsidian
git clone <your repository_github_url>
```
For Authentication, you have two ways. Use [Personal Access Tokens](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token), or use [SSH](https://docs.github.com/en/authentication/connecting-to-github-with-ssh). I use the second as the first one is blocked in my country. 

You should now have the repository folder on your device and you should be able to open your obsidian files inside its app.


> Here, You should go to Settings -> Community Plugins -> Obsidian Git and make sure `Disable on this device` is checked (unfortunately this plugin doesn't work well on mobile).

But how do we sync obsidian? Bare with me. 

The first step is to add a `.profile` file to your Termux home directory. To do this, run the following commands:
```
cd ~
touch ~/.profile
echo "source ~/.profile" >> ~/.bashrc
```
Next, you'll need to add some lines of code to your `.profile` file. These lines will create a function called `sync_obsidian` that will take care of syncing your notes. You should add the following code:
```bash
function sync_obsidian
{
cd /storage/downloads/obsidian/<your-repo-name>
git add .
git commit -m "Android Commit"
git fetch
git merge --no-edit
git add .
git commit -m "automerge android"
git push
}
alias ob="sync_obsidian"
alias o="sync_obsidian && exit"
```

The `alias ob="sync_obsidian"` creates an alias `ob` for the function `sync_obsidian`, so that you can call the function by just typing `ob` in the terminal. The `alias o="sync_obsidian && exit"` creates an alias `o` for the function `sync_obsidian` and also exits the terminal after syncing. 

> It's important not to use `git pull` in `sync_obsidian` function since it will prompt you for a merge commit message every time there are conflicts, which can be very annoying. [Why is git prompting me for a post-pull merge commit message? - Stack Overflow](https://stackoverflow.com/questions/11744081/why-is-git-prompting-me-for-a-post-pull-merge-commit-message)

Here is also a short video to see how this works inside Termux. 

{{<youtube AXf4pzULMIU>}}

## Creating SSH-Key for Git
If you don't want to read github documentation, here's how to do it quickly. 

First, you create an ssh-key using:

```shell
cd ~
ssh-keygen -t ed25519 -C "your_email@example.com"
```

Press Enter if you see any messages. It will ask about where to store the file and also the password. It doesn't matter. Then Enter this command to see your public key:

```bash
cat  ~/.ssh/id_ed25519.pub
```

Copy all the output into your clipboard. Then login to your Github account and Go to `Settings -> SSH and GPG keys -> Add ssh-key`. Then add your ssh key to your account. 

You can now go into your repository and copy your ssh url and then use it for cloning. 

Good Luck!
