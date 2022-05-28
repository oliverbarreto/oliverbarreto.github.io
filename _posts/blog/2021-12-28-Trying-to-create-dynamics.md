---
title: "Trying to create dynamics of a static site"
excerpt_separator: "<!--more-->"
categories:
  - Post Formats
tags:
  - Jekyll
  - Web
---
After a few years sin 2013 that I created this webiste using Jekyll and So-Simple Theme by [MadeMistakes](https://github.com/mmistakes/so-simple-theme) I found that updating the theme was not going to be an easy task. Things have changed a lot since the good 'ol-days'. We now have easier to deploy gem-based themes, don't we ???
<!--more-->

When I followed the instructions in the theme, i always got an error by Github auto CD/CI actions, complaining that It could compile and deploy the pages throwing a horrible error "1. Failed to create deployment for 36e312e570a71db84a1e74c76bb12b4ffafc0be1. Error: Error: No uploaded artifact was found!". Even strictly following the instructions: just clone the repo, change `_config.yml`, commit to github and ready to go.

After a few hours i went a very different route: follow github strandard guide... and voila!!!

1. First remove every content of your repo, and then go to your project's settings and enable any of available themes by default by github. Check that you can see your blog published with Github pages using a standar theme.

2. Then, follow this guide to add any of the remote themes to your repo: https://docs.github.com/es/pages/setting-up-a-github-pages-site-with-jekyll/adding-a-theme-to-your-github-pages-site-using-jekyll. The idea is that we set up the remote theme on our `_config.yml` with `remote_theme: "mmistakes/so-simple-theme@3.2.0"`. If you check now your blog, it should now have the new theme applied.

Now, for a fresh start, download with 'git clone https://github.com/mmistakes/so-simple-theme.git' the theme locally and configure to your own needs.

If you have a backup, copy the files and folders needed, commit and push to your blog. In my case, I needed:
- `_config.yml` edit your current config file to extend all the context of the one included in the template. Make sure you leave no data blank, and the remote-theme is correctly specified. 
- `_navigation.yml_` edit the navigation items and create your sections pages accordingly.
- _data (folder with navigation menu structure)
- _posts (folder with posts entries)
- CNAME (with my domain in order to force dns entries in github redirected to https://oliverbarreto.github.io)

|____images
|____posts
|_____data
| |____text.yml
| |____navigation.yml
| |____authors.yml
|____config.yml
|____README.md
|____favicon.png
|____favicon.ico
|____CNAME
|____404.md
|____index.md
|____posts.md
|____search.md

> The old way: Then we [create a pull request](https://docs.github.com/es/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-a-pull-request) of that repo in a new temporary branch. The request will be automatically approved, and all there is to it, is merge the request into our master branch. After this, the new branch can then be safely removed.

3. It should now be good to go !!! Give it a try by going to your browser and reloading your githuib pages site. Plain and simple index.md rendered with the proper template.


From there, you only need to create content with the common Jekyll sites publishing style: create markdown files and commit then into Github to apply the changes.