---
title: "Simple steps to set up your new Macbook Pro M1 for developement and machine learning"
description: "Simple steps to set up your new Macbook Pro M1 for developement and machine learning"
excerpt_separator: "<!--more-->"
categories:
  - Blog
tags:
  - Apps
  - macOS
  - Productivity
  - Development
comments: true
share: true
---

# Simple steps to set up your new Macbook Pro M1 for developement and machine learning
![image-right]({{ '/images/blogposts/20220529-appleM!silicon.png' | absolute_url }}){: .align-right} Got your self a bran new powefull notched-version M1 Macbook Pro and you want to take advantage of its powerful chip as a developer ??? You have heard that is not that easy due to incompatibility issues, they are right, but there is a way to do it right. The following steps will be of your interest...
<!--more-->

First of all, I am no professional developer. I am an enthusiast developer. Your configuration and needs maight be different, but these are base level configuration that apply for almost every need.

## Install the basic tools: Homebrew and iTerm2 with PowerLevel10K enhancements
After you finnish installing all the apps you need for work, it's time to install all the powerfull tools for developing iOS, python scripts or web developement, but also for data science and Machine Learning (ML) and Artificial Intelligence (AI).

1.  Install [Homebrew](https://brew.sh/index_es) `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
2. Install Xcode from the web. I have tried to install it from the App Store app, and it has failed many times. Now I only [install it from the Apple Developer Website](https://developer.apple.com/download/all/?q=Xcode)
3. Also install from Apple Developer website: 
	1. Command line tools (Homebrew should have done this automatically for you)
	2. Additional Tools for Xcode
4. Install iterm `brew install --cask iterm2`. Check my full guide to fully customize this tool [here](https://www.oliverbarreto.com/blog/The-Terminal-I-Wish-I-Had-When-I-was-a-Kid/)or take a look more tips below.
6. Install Git `brew install git`
7. Install Oh-My-ZSH   `
`sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
8. Download & Install the Fonts: `https://github.com/Falkor/dotfiles/blob/master/fonts/SourceCodePro%2BPowerline%2BAwesome%2BRegular.ttf`

9.  Install powerlevel10k: cd into your root folder  `cd ~` and  `git clone https://github.com/romkatv/powerlevel10k.git`
10. Edit `code. ~/.zshrc`. Then find and edit: `ZSH_THEME="powerlevel10k/powerlevel10k"`
Quit and re-launch iTerm to run the theme confitguration which prompts you a lot of customization choices that depend on how you want to style your console.
 
11.  Add zsh plugins of your choice: (zsh-autosuggestions colorize git pip python) etc. [[#Bonus Some cool Oh-My-ZSH plug-ins that need installation]]]

## VS Code
1. Install VSCode  `brew install --cask visual-studio-code`
2. Customize VSCode (font size, etc.) and install VSCode extensions: 
	- prettier, rainbow brackets, live server, live preview
	- python, swift 
	- docker, (docker) remote containers

3. I have given a try lately to Codium `brew install --cask vscodium`  which is pretty much the same of VS CODE, made from the same open source forge, but without all the added sugar by Microsoft, you know,  that personalization layer for professional tracking for advertisement.

## Python: with Pyenv & pyenv-virtualenv
I (now) use pyenv and pyenv-virtualenv:

1. Install ``pyenv`` and ``pyenv-virtualenv`` thru Homebrew
```bash
~$ brew update
~$ brew install pyenv
~$ brew install pyenv-virtualenv
```

2. Add the following lines to the end of the ``.zshrc`` file in your root directory (``~``)
```bash
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PIPENV_PYTHON="$PYENV_ROOT/shims/python"

plugin=(
  pyenv
)

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
```

3. Then, reload the ``.zshrc`` file to apply the changes made
```bash
~$ source ~/.zshrc
```

4. See all available versions for ``pyenv``
```bash
~$ pyenv install --list
Available versions:
2.1.3
2.2.3.
2.3.7
...
```

5. Install a Python version from the list above. Note that this may take some time to complete
```bash
~$ pyenv install 3.8.13
~$ pyenv install 3.10.4

~$ pyenv global 3.10.4
```

6. Check on the installed ``pyenv`` Python versions
```bash
~$ pyenv versions
* system (set by /User/user/.pyenv/shims/version)
3.5.6
```

8. Set your latest python version as global version: 
`pyenv global 3.10.0`

9.  Restart iterm
11. .  `which python` should show `/Users/fred/.pyenv/shims/python`

**USAGE**: Now, on your everyday work, make virtualenvs for every project (these get saved to sepcific directories) and install all needed packages like eg MySQL.

**BONUS:** And this is something that I recently found but I haven't had the time to use it. If you use jupyter: install pyenv jupyter kernel [https://github.com/aiguofer/pyenv-jupyter-kernel](https://github.com/aiguofer/pyenv-jupyter-kernel). This will create automatic kernels for each pyenv virtualenv.


## Machine Learning and Data Science
Your M1 mac can give you the power you need if you need working with tools for Data Science and Machine Learning and Deep Learning like `Jupyter Notebooks` and `python` with all the packages you need like: numpy, pandas, matplotlib, and [TensorFlow](https://www.tensorflow.org) and [Keras](https://keras.io). 

Pytorch has also recently provedided native support for Apple Silicon M1 chips by [Introducing Accelerated PyTorch Training on Mac](https://pytorch.org/blog/introducing-accelerated-pytorch-training-on-mac/).

Read the next article in my blog for a full description on how to install [TensorFlow](https://www.tensorflow.org) on M1 chips, which is not easy, but not impossible neither.


### Docker
1. Install Docker desktop for Mac which already has been ported to Apple Silicon. https://docs.docker.com/desktop/mac/install/


### Other dev tools
1. A simple Database client 'DB Browser for SQLite'  `brew install --cask db-browser-for-sqlite`
2. An ftp/sftp client: I used to work with 'Trasmit' but now I just use 'Cyberduck'  for all. Simpler and free tool that gets the job done. ` brew install --cask cyberduck`
3. YouTube downloader `brew install youtube-dl`
4. For internet connection speed check: `pip install speedtest-cli`


---
## Bonus: Install 3 more cool Oh-My-ZSH plug-ins that require installation
The following plugins do not come with Oh-My-ZSH so you need to follow a couple of more steps in order to have them ready:
```bash
plugins=(
	git
	macos
	git
	copypath
	dirhistory
	history
	pyenv
	
	# ... and the following ones that need installation
  zsh-syntax-highlighting
  zsh-autosuggestions
  k
)
```

1. [**zsh-syntax-highlighting**](https://github.com/zsh-users/zsh-syntax-highlighting): This package provides syntax highlighting for the shell zsh. It enables highlighting of commands whilst they are typed at a zsh prompt into an interactive terminal. This helps in reviewing commands before running them, particularly in catching syntax errors.

_Installation for Oh-My-Zsh:_
```bash 
❯ git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```
Remember to add to your `.zshrc`

2. [**zsh-autosuggestions**](https://github.com/zsh-users/zsh-autosuggestions): It suggests commands as you type based on history and completions.

_Installation for Oh-My-Zsh:_
```bash
❯ git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```
_Remember to add to your_ `.zshrc`

3.  [**k**](https://github.com/supercrabtree/k): **k** is a zsh script / plugin to make directory listings more readable, adding a bit of colour and some git status information on files and directories.

_Installation for Oh-My-Zsh:_
```bash
❯ git clone https://github.com/supercrabtree/k $ZSH_CUSTOM/plugins/k
```
_Remember to add to your_ `.zshrc`


## Conclusion
Happy coding with your M1 Mac !!!