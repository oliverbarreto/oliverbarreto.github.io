---
title: "Dotfiles Deja Vu"
description: "Cómo (volver a) automatizar la instalación de un mac nuevo con Dotfiles"
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

![image-center]({{ '/images/blogposts/20250310-deja-vu-man-in-the-mirror.jpg' | absolute_url }}){: .align-center}

# Cómo (volver a) automatizar la instalación de un mac nuevo con Dotfiles

Hace un año EXACTAMENTE que creé un post en el que automatizaba la instalación de aplicaciones. Hoy he tenido que hacerlo no porque haya instalado un nuevo mac, sino porque el antiguo se ha muerto tras actualizar el sistema operativo. Sí, es cierto, instalar paquetes de seguridad puede ser perjudicial para la salud de un equipo.

La suerte es que después del tiempo perdido recuperando el disco, sin éxito, y después reinstalando el OS completo, puedo decir que la instalación ha sido "coser y cantar".
<!--more-->

Es muy fácil. Me descargo mi repositorio de 'dotfiles' de Github, descomprimo el repositorio, reviso los paquetes que quiero instalar con 'Home Brew' y ejecuto el script './install.sh', elijo los paquetes que quiero instalar en el menú, y un rato después tienes todas las aplicaciones, fuentes y configuraciones instaladas en tu máquina. 

Sólo queda validar el sign-in de los usuarios en las aplicaciones. Voila !!!

Listo. Sólo queda subir a Github la acctualización de paquetes [https://github.com/oliverbarreto/dotfiles](https://github.com/oliverbarreto/dotfiles) y dejarlo listo para la siguiente vez.
