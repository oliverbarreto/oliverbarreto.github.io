---
title: "Ollama, el Docker de los Modelos LLM (🦙❤️🐳)"
description: "Cómo utilizar modelos LLM en local"
excerpt_separator: "<!--more-->"
categories:
  - Blog
tags:
  - ChatGPT
  - Ollama
  - Python
  - JavaScript
  - AI
comments: true
share: true
---
![image-center]({{ '/images/blogposts/20240220-ollama.png' | absolute_url }}){: .align-center}

# 🦙❤️🐳 Ollama, el Docker de los Modelos LLM

Si quieres trabajar con LLMs en local sin conexión de Internet, o no pasar por OpenAI ChatGPT lo sabe y lo usa todo, esta es la mejor solución.

## Instalar Modelos LLMs en local con Ollama Server

1. Descarga desde [Ollama.ai](https://ollama.com/) para tener servidor en local

Ahora ya puedes ejecutar modelos como `Llama 2`, `Code Llama`, y otros. También permite modificar y crear modelos personalizados como harías con una imagen de Docker.

2. Para utilizar Ollama:

- descargar modelos: `ollama pull llama2`. Existen muchos modelos en [https://ollama.com/library](https://ollama.com/library)
- ejecutar modelos: `ollama run lava` y tendrás el modelo listo en una terminal
- ver los modelos descargados: `ollama list`
- eliminar un modelo descargado: `ollama rm llama2`
- también puedes arrancar Ollama desde la terminal sin necesidad de la aplicación de escritorio con `ollama serve`
- ejecutar una consulta desde el prompt `ollama run llama2 "why is ths sky blue?"`
- ejecutar una consulta desde el prompt pasándole un archivo como argumento para el contexto `ollama run llama2 "haz un resumen del siguiente archivo: $(cat README.md)"`
- ejecutar una consulta multimodal sobre una imagen en tu disco local  `ollama run llava "what is in this image? /users/me/images/myimage.jpg"`
- saber más: `ollama --help`

3. Para saber más, puedes leer su blog en [https://ollama.ai/blog](https://ollama.ai/blog)y el canal de Youtube de su PM & Evangelist en [https://www.youtube.com/@technovangelist](https://www.youtube.com/@technovangelist) que van publicando lo último que van sacando, y mejoran muy rápido.

## Utilizar un asistente personal local con `VS Code` en lugar de Github Copilot

1. Descargar `Cody Plugin` para `VS Code`:

- hacer el login con una cuenta de Github por ejemplo y autorizar su uso.
- Abrir `Cody plugin settings / pick "⚙ Cody Extension Settings" with gear icon`.

2. Hacer scroll hasta llegar abajo a y cambiar:

- opción `Cody > Autocomplete > Advanced: Provider` y seleccionar `experimental-ollama` o `unstable-ollama`.
- opción `Cody > Autocomplete > Advanced: Model` y dejar `null` para dejarlo por defecto.

3. Empezar a utilizar Cody como asistente ya dentro de `VS Code` pero esta vez en local, con tu LLM Open Source favorito por ejemplo `codellama:7b-code`.

## Librerías para Python y JavaScript

Ya están disponibles las versiones iniciales de librerías para poder utilizar `Ollama` en lugar de las APIs de `OpenAI ChatGPT`.

```console
pip install ollama
npm install ollama
```

Para saber como utilizarlas tienes el blog [https://ollama.com/blog/python-javascript-libraries](https://ollama.com/blog/python-javascript-libraries) y video en su canal de Youtube.

## Utilizar la API REST de Ollama

También puedes utilizar la API REST que funciona en la trastienda:

```json
curl http://localhost:11434/api/generate -d '{
	"model": "llama2",
	"prompt": "Why is the sky blue"
}'


curl http://localhost:11434/api/chat -d '{
	"model": "llama2",
	"messages": [
		{ 
			"role": "user",
			"content": "Why is the sky blue" 
		}
	]
}'
```

## Otros recursos interesantes

- [Cody AI Assistant! Open-Source "LLaMA Code" Coding Assistant (Tutorial)](https://www.youtube.com/watch?v=gY_E3QBZ-NE)
- [Using Llama Coder As Your AI Assistant](https://www.youtube.com/watch?v=fT-sUUq48Xk)
- [Writing Better Code with Ollama](https://www.youtube.com/watch?v=NNBWmIve3fQ)