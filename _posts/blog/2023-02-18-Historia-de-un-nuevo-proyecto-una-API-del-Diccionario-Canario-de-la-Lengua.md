---
title: "Canario conoce tu Lengua"
description: "Historia de un nuevo proyecto: Como llevar una idea a la realidad en menos de 3 días: crear una API del Diccionario de la Lengua Canaria - Parte 1"
excerpt_separator: "<!--more-->"
categories:
  - Blog
tags:
  - ChatGPT
  - Flask
  - API
  - Python
  - Docker
  - Canarias
  - Lengua Canaria
  - MVP
  - Product Development
comments: true
share: true
---
![image-center]({{ '/images/blogposts/2023-02-18-lenguacanaria.jpg' | absolute_url }}){: .align-center} 
# Canario conoce tu lengua !!!

Recuerdas lo de "Canario conoce tu Tierra" ??? pues ya va siendo hora de que también te acostumbres a lo de "Canario conoce tu Lengua". Por eso vamos a tratar de hacer fácil el poder acceder en distintos servicios online al diccionario de la lengua que se habla en esta tierra, o poder ofrecer una palabra "random" cada día, y otros casos de uso.

También me sirve para documentar el cómo llevar una idea a la realidad en menos de 3 días utilizando varias tecnologías.
<!--more-->

Además, todo esto tiene un truco. Como no soy desarrollador profesional siempre digo que "nunca trabajaría para una empresa que me contrate como desarrollador" 😂 con el sentido de decir que sé programar, pero no soy experto, sé los conceptos, pero no tengo práctica del día a día, no tengo bien entrenado con la práctica y repetición diaria el músculo de memoria para darle a la tecla sin parar, y desde luego, sin tener errores. 

Como Product Manager, sé lo que quiero hacer y muchas veces hasta el cómo, pero el detalle de cómo no lo domino. En mi caso, digamos que es como hablar inglés, si no lo practicas... lo olvidas tras el paso del tiempo, hay que recordarlo. Eso mismo es lo que me pasa con Python, para mi es un lenguaje como muy natural a la hora de expresar lo que quiero hacer, pero las librerías y buenas prácticas hay que trabajarlas continuamente para tener soltura.

Me he propuesto validar una idea en poco tiempo, y por eso, me he auto-regalado el privilegio de poder tomarme la píldora roja. Y no, no me refiero a usar [Google](https://google.com), ni tampoco a usar [StackOverflow](https://stackoverflow.com). Voy a trabajar con los "super-poderes 😎💪🏻" que te proporciona la AI de ChatGPT para poder idear, diseñar, construir, e incluso testear. Cuando quiera saber como "escribir cierto código" lo que voy a hacer es usar mi nuevo más-mejor-super-amigo [ChatGPT](https://chat.openai.com/chat) para poder "refrescar" el cómo escribir el código de lo que quiero hacer. Cuando quiera saber que librería utilizar, le preguntaré. De hecho, le voy a preguntar hasta que me oriente para resolver los posibles fallos que pueda tener en lugar de googlearlos y convertir la identificación del problema y resolución, con la habilidad de navegar por las webs propuestas por Google para tratar de identificar "algo lo más parecido posible" y arreglar. Sí Google, debes estar nervioso !!! 

## El plan
El plan es el siguiente:

**Día 1**
- Python y BeautifulSoup para el poder descargar en local la BD fácilmente.

**Día 2**
- Python y Flask para la API.
- Docker para el deploy en explotación en un home lab con comunicaciones https.

**Día 3**
- ReactJS para crear una app.

**Día 4 - Bonus**
- Crear una automatización en mi Home Assistant que me permita visualizar en mi panel una palabra random cada día, y escucharla por mis altavoces.
- Crear un Bot de Telegram que me permita consultar el significado de una palabra.

## ¿ Ya llegamos ?
Por ahora ya está finalizada la fase 1: días 1 y 2. Puedes acceder a la API en [https://randomdic.oliverbarreto.com](https://randomdic.oliverbarreto.com). En otro futuro post escribiré sobre los resultados del día 3 y 4 y sobre los pros & cons de usar ChatGPT como asistente, o mejor dicho el compañero informático "sabiondo" que todo lo sabe, aunque a veces te conteste con código que debes estar bien atento y revisar.

# Descripción de la Random API del Diccionario Canario de la Lengua
En este proyecto se ofrece una API pública para que se pueda consultar el Diccionario de la Lengua Canaria y algunos datos sobre ella.

- [https://randomdic.oliverbarreto.com/random](https://randomdic.oliverbarreto.com/random)
- 
La BD del diccionario de la Lengua Canaria ha sido descargada desde [www.academiacanarialengua.org](https://www.academiacanarialengua.org/diccionario/a/?page=1), y cuenta con palabras y significados.

La BD es muy simple:
- palabras: tabla que guarda un id, la palabra y created_date. 
- significados: tabla que guarda un id, palabra_id que referencia a la palabra a la que pertenece, texto con un texto compuesto por las múltiples acepciones de cada palabra y created_date

Se ofrecen las siguientes rutas:
- [https://randomdic.oliverbarreto.com/](https://randomdic.oliverbarreto.com/): says "hello !!!"
- [https://randomdic.oliverbarreto.com/info](https://randomdic.oliverbarreto.com/info): 
```javascript
{
	"num_palabras": 4706,
	"num_significados": 7363
}
```
- [https://randomdic.oliverbarreto.com/stats](https://randomdic.oliverbarreto.com/stats)
```javascript
{
	"L": 1,
	"R": 1,
	"a": 413,
	"b": 312,
	"c": 621,
	"d": 154,
	"e": 343,
	"f": 202,
	"g": 249,
	"h": 95,
	"i": 32,
	"j": 127,
	"l": 128,
	"m": 370,
	"n": 41,
	"o": 18,
	"p": 446,
	"q": 31,
	"r": 301,
	"s": 212,
	"t": 428,
	"u": 14,
	"v": 98,
	"y": 7,
	"z": 43,
	"á": 3,
	"ñ": 14,
	"ó": 2
}
- [https://randomdic.oliverbarreto.com/fullstats](https://randomdic.oliverbarreto.com/fullstats):
```javascript
{
	"letras_sin_palabras": [
		"x",
		"w",
		"k"
	],
	"palabras_por_letra": {
		"L": 1,
		"R": 1,
		"a": 413,
		"b": 312,
		"c": 621,
		"d": 154,
		"e": 343,
		"f": 202,
		"g": 249,
		"h": 95,
		"i": 32,
		"j": 127,
		"l": 128,
		"m": 370,
		"n": 41,
		"o": 18,
		"p": 446,
		"q": 31,
		"r": 301,
		"s": 212,
		"t": 428,
		"u": 14,
		"v": 98,
		"y": 7,
		"z": 43,
		"á": 3,
		"ñ": 14,
		"ó": 2
	}
}
```

- [https://randomdic.oliverbarreto.com/random](https://randomdic.oliverbarreto.com/random):
```javascript
{
	"acepciones": "\n1. m Millo sin tostar molido algo grueso. Se emplea generalmente para alimento de animales. Como no había hierba, tenían que alimentarlos a base de rolón.",
	"id": 9426,
	"palabra": "rolón"
}
```

- [https://randomdic.oliverbarreto.com/palabras](https://randomdic.oliverbarreto.com/palabras):
```javascript
{
	"L": [
		"La Habana"
	],
	"R": [
		"Ricardito"
	],
	"a": [
		"abacorante",
		"abacorar",
		"abade",
		"abae",
		"abaifado, da",
		"abaldonado, da",
		"abamballado, da",
		"abanada",
		"abanador",
		"abanar",
		"abanazo",
		"abarrenado, da",
		"abatatarse",
		"abejera",
		"abejón",
        ...
    ],
    ...
}
```

- [https://randomdic.oliverbarreto.com/significados](https://randomdic.oliverbarreto.com/significados):
```javascript
{
	"abacorante": {
		"significados": [
			"1. adj GC. Que causa miedo o sobrecogimiento. Aquel pleito con los vecinos le dejó una sensación amarga y abacorante."
		]
	},
	"abacorar": {
		"significados": [
			"1. v  Acosar, acorralar. Aunque lo abacoraron entre todos, al final logró escaparse.",
			"2. v  Abatir, someter, tanto física como moralmente. Hasta los más chicos lo abacoraban."
		]
	},
    ...
}
```

- [https://randomdic.oliverbarreto.com/sigs](https://randomdic.oliverbarreto.com/sigs):
```javascript
{
	"L": [
		[
			"La Habana",
			"ser algo La Habana en Cuba.    Ser un lugar o un negocio muy próspero."
		],
		[
			"La Habana",
			"2. Tf. Reinar el desorden en un lugar."
		]
	],
	"R": [
		[
			"Ricardito",
			"ser/estar más feliz que Ricardito.   Mostrarse muy feliz y despreocupado en una situación dada."
		]
	],
	"a": [
        ...
    ],
    ...
}
```

