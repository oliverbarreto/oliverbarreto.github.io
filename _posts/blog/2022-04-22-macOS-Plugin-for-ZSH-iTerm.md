---
title: "ZSH Plugins that will make your life easier (if you remember)"
description: "A faster way to open directories in terminal and finder"
excerpt_separator: "<!--more-->"
categories:
  - Blog
tags:
  - Productivity
  - Productivity Workflow
  - Coding
  - VSCode
comments: true
share: true
---


# ZSH Plugins that will make your life easier (if you remember)
Want to work faster with your finder and terminal folders, then remember this.
![image-right]({{ '/images/blogposts/20220422-image01.jpg' | absolute_url }}){: .align-right} Remember this terminal shortcuts to work faster with your finder and terminal folders.
<!--more-->

First, you must use ZSH Plugins, and have 'macos' plugin installed.
In my case i have an alias to open zsh configuration called, guess what ?: 'zshconfig'

Then add:
```bash 
plugins=(
...
macos
...
)
```

Which enable your best new friends in town:

- `ofd`
to Open the current directory in a Finder window
- `pfd`
to Return the path of the frontmost Finder window
- `pfs`
to Return the current Finder selection


And finally, my favorite... 
- `cdf`
to `cd` to the current Finder directory


Read more options in the docs:
https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/macos