---
title: "Install TensorFlow on M1 Macs: Mission (It's)possible"
description: "To install [TensorFlow](https://www.tensorflow.org/) on a new Mac M1 is no simple task, unless you have priviledged access to the magic receipe. Find here all the steps to install it in a breeze."
excerpt_separator: "<!--more-->"
categories:
  - Blog
tags:
  - Apps
  - macOS
  - M1
  - Apple Silicon
  - Development
  - Machine Learning
  - TensorFlow
comments: true
share: true
---

# Install TensorFlow on M1 Macs: Mission (It's)possible
![image-right]({{ '/images/blogposts/20220529-m1-tensorfow-python.jpg' | absolute_url }}){: .align-right} To install [TensorFlow](https://www.tensorflow.org/) on a new Mac M1 is no simple task, unless you have priviledged access to the magic receipe. 

Well, I just found a copy on the bright side of the Web that I want to share with you to make the installation a breeze.
<!--more-->


## 0. Requirements
According to [TensorFlow installation requirement notes](https://www.tensorflow.org/install/pip?hl=es-419) we will need **Python 3.6 to 3.9** version so the best way to install it is taking advantage of pyenv if you need other versions on other projects:
 - Python 3.9 -> TensorFlow 2.5 or later.
 - Python 3.8 -> TensorFlow 2.2 or later.
-  pip 19.0 or later (requieres compatibility with `manylinux2010`)
-  macOS 10.12.6 (Sierra) or later versions(64-bit) _(no compatibles with GPU)
- macOS requieres pip 20.3 or later


## Installing tensorflow on M1 with pyenv
- https://www.fredlich.com/works/installing-tensorflow-on-m1-with-pyenv

Tensorflow is very tricky to install on an M1 mac. Here's how I got it working: 

### Install Python version for TensorFlow
TensorFlow needs **Python 3.6 a 3.9** so install it with pyenv
`pyenv install 3.8.13`
`pyenv global 3.8.13` to set it as the main global version

### Install Miniforge (for a Conda environment) with pyenv
`pyenv install --list`  to get latest version of miniforge
`pyenv install miniforge3-4.10.3-10` to install conda

### Activate miniforge env
`pyenv activate miniforge3-4.10.3-10`

### Create a Conda env
`conda create --name env_tensorflow python=3.9`

Activate env: `conda activate env_tensorflow`
... you are now in a conda env in a pyenv env

> You can also activate `Conda Base` environment.

### Install tensorflow dependencies
`conda install -c apple tensorflow-deps`

### Install tensorflow-macos version
You'll have to use pip for this.
`pip install tensorflow-macos`

ignore any errors.

### To use GPU install tensorflow-metal
`pip install tensorflow-metal`

### Try and import tensorflow in the python shell
Enter python shell to check if you can import TensorFlow
`python` `>>> import tensorflow as tf` `print(tf.__version__)`

**If it works, it works!**
... if it doesn't work, well, it doesn't work !!! 

It didn't work for me. But I didn't quit. Continue reading for the official workaround.

### Solving the error !!!
In my case I had the following error:

> If this call came from a _pb2.py file, your generated code is out of date and must be regenerated with protoc >= 3.19.0.
If you cannot immediately regenerate your protos, some other possible workarounds are:
> 1. Downgrade the protobuf package to 3.20.x or lower.
> 2. Set PROTOCOL_BUFFERS_PYTHON_IMPLEMENTATION=python (but this will use pure-Python parsing and will be much slower).

More information: https://developers.google.com/protocol-buffers/docs/news/2022-05-06#python-updates

> **"Python upb requires generated code that has been generated from protoc 3.19.0 or newer."**


So... just do what it says: downgrade protobuf package to the recommended version:
```bash
$ pip uninstall protobuf
...

$ pip install protobuf~=3.20.0 
#or ... pip install protobuf~=3.19.0 (as the error message says)
```


### Example: Working with Tensorflow in a Conda and Pyenv dual environment

1. **Enter in mini-forge pyenv environment**
```bash
pyenv virtualenvs (list all env created in pyenv)

pyenv activate miniforge3-4.10.3-10 
# (you are now inside the minforge env within pyenv)
```

2. **Enter in conda environment**
```bash
conda env list (list all environment created within conda)
conda activate base
```

(more info on how to work with conda environments in [conda docs](https://docs.conda.io/projects/conda/en/4.6.0/user-guide/tasks/manage-environments.html))

3. **Install all needed packages in conda base env**
```bash
conda list (list all packages available in conda)
pip list
pip install _package_

```

**Open Jupyter Notebook and work**
```bash
jupyter notebook
...
work with tensorflow
...

```

**Deactivate Conda Env, then Pyenvenv**
``bash
conda deactivate
pyenv deactivate
```

You can now use TensorFlow in any working directory, since it is installed in a separate Conda environment !!!