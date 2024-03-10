---
title: "Automatizar la instalación de un equipo nuevo con Dotfiles... sólo falta el equipo nuevo!!!"
description: "Cómo automatizar la instalación de un mac nuevo con Dotfiles"
excerpt_separator: "<!--more-->"
categories:
  - Blog
tags:
  - VS Code
  - dotfiles
  - automate
  - config
  - macOS
comments: true
share: true
---

![image-center]({{ '/images/blogposts/2023-03-10-dotfiles.webp' | absolute_url }}){: .align-center}

# Automatiza todo lo que puedas

Inspirado en cómo monté hace 2 años el Macbook Pro M1 de empresa hace, hace un año configuré desde cero mi Macbook nuevo. Recientemente para darle un cambio de herramientas, hice una aproximación a dotfiles que luego modifiqué pero no había subido a Github.
<!--more-->

Esta semana cuando un compañero configuró se nuevo M3, recordé que debía subirlo y escribirlo en piedra digital para que no se me vuelva a olvidar.

## Symlinks 

Sabiendo que existen múltiples herramientas de gestión y automatización para trabajar con `symlinks` y dotfiles, quise aprender los conceptos detrás y realizar un proceso lo más automatizado posible... dentro de la simpleza de herramientas estándar. 

Si has instalado un ordenador desde cero, incluso un mac, sabes que se "gasta" mucho tiempo en la descarga e instalación de las aplicaciones que usas normalmente. Ni te cuento ya, si hablamos de configurar una máquina para desarrollo y las herramientas de tu entorno de confianza.

El truco está en utilizar `symlinks` y crear scripts para que la máquina haga el trabajo por ti. Utilizando y aprovechando que en macOS tenemos la magia de poder instalar con confianza aplicaciones desde [Home Brew](https://brew.sh). 

- Un Symlink no es más que una especia de "atajo" o "acceso directo" desde tiempos de los antiguos `Windows95`, que pueden apuntar a otros archivos en una ruta distinta, aunque accedas dese su ruta original. Usaremos varios para apuntar a archivos de configuración, como puede ser especialmente `.zshrc` (con la configuración de la terminal de macOS por defecto, ZSH) o `.aliases` (donde guardo mi configuración de alias del sistema según mis preferencias).
- Por otro lado, Home Brew dispone de la descarga de aplicaciones en dos formatos `Formulae` y `Casks`. Son dos formas de decir lo mismo, salvo que `Homebrew-Cask` es una extensión que permite instalar aplicaciones que tienen GUI, como por ejemplo `Google Chrome`. En su catálogo de versiones disponibles encontrarás de todo, y suele estar bien actualizado. 

La verdad es que prefiero esta forma de instalar aplicaciones que descargar el instalador y ejecutar desde el disco. Sólo tienes que recordar hacer el update cuando toque a través suyo. De vez en cuando te encuentras con alguna sorpresa desagradable como que han "deprecado" `EXA`, una extensión de la interfaz para tener mejores comandos de `ls` y `tree`. Ahora estoy probando `EZA`, un fork de este.

## Al lio, con ChatGPT

Pues lo único que toca es crear un script con la ayuda de ChatGPT... nunca aprendí el lenguaje `bash` de terminal... pero la intención es fácil:

- crear un script que presente unos menús para saber si quiero instalar todo de forma automática, o instalando eligiendo de entre algunas opciones.
- crear un script para cada opción
- preguntas aquí, como hacer en ese lenguaje alguna comprobación, algún bucle, como crear bucles utilizando algún fichero de configuración adicional, como por ejemplo, donde especificar las aplicaciones (fórmulas y casks por separado) de HomeBrew que instalar.
- crear una estructura de directorios donde guardar algunas fuentes que instalar por defecto, algunos ficheros de configuración o paletas de colores de herramientas como iTerm que luego importaré, templates con la última versión de ficheros como `.aliaases`, `.zshrc`, `.zsh.p10k`...

Listo. Sólo queda subirlo a Github [https://github.com/oliverbarreto/dotfiles](https://github.com/oliverbarreto/dotfiles) y dejarlo listo para montar mi nuevo Macbook... pero esa será otra historia... ya que me falta mi nuevo Macbook !!!
