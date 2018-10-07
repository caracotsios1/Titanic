# Basic GitHub Commands
An overview of the basic GitHub commmands and workflow. 

## Overview
Git is a tool known as a "version control system" (or VCS). It does more or less what it's name implies – tracks changes to sets of files and saves those changes in a way such that multiple people can simultaneously work on the same files. GitHub is a website (now owned by Microsoft) that stores Git repositories (aka "projects") on the Internet. 

## Basic Git/GitHub
#### Git/GitHub Workflow
The simplest Git/GitHub workflow goes like this:
0. Pull changes/snapshots from GitHub onto your computer*
1. Make some changes to a file locally
2. Tell Git to track those changes locally
3. Tell Git to take a save a "snapshot" of those changes locally
4. Push the changes/snapshots to GitHub repository

In terms of GitHub commands, this looks like
0. `git pull`*
1. [Do some stuff to `myfile.txt`]
2. `git add myfile.txt`
3. `git commit -m "made some changes"`
4. `git push`

You can run `git status` before/after each of these steps to observe how Git is recording what you're doing. It's also a useful way to check which files have been changed if you are coming back to work after not adding/committing for a while. 

\* We will cover this in the next section. I forgot to mention it originally, but it's important that you always run `git pull` before you start working on anything new. 

#### Pushing and Pulling to/from GitHub
There was a fourth command that we covered – `git pull`, the counterpart of `git push`. `git push` tells Git to take all the changes you made locally (i.e. on your computer) and send ("push") them to GitHub to update the copy of your project stored online. Until you run `git push`, the changes you made to the files you made on your computer will not appear on GitHub.

So what does `git pull` do? `git pull` tells Git to check GitHub for any changes that exist on the online copy of your project and "pull them down" so that you also have them locally. If you're working on a project with other people (who can all push to the same repository) or accepting work via pull requests from external contributors, you need to run `git pull` so that you can make sure to have the changes that they made to your files. If you don't do this (and sometimes even when you do), you get what are known as "merge conflicts" – meaning that you both made changes to the same parts of the same file. We will cover this later, if need be. 

#### `.gitignore` Files
`.gitignore` files are sets of file patterns that you want Git to ignore. The `.gitignore` file for this project looks like this:
```
Data/*
```
This tells Git to ignore all files in the `Data/` folder (the * is a wildcard meaning "everything"). Alternatively, if we only had a single large data file we wanted Git to ignore, but several smaller data files, we could have a `.gitignore` file that looks like this:
```
Data/one_big_file.csv
```
However, for this assignment, we'll just ignore all the data files.

#### Merge Conflicts
We'll talk about these later.

## Caveats
Be CAREFUL with what you add/commit. Undoing changes in Git is not easy. If you ever add or commit something you want to get rid of, talk to me and I'll explain how to do this. 
