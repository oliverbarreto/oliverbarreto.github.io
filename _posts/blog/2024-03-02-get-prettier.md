---
title: "Como activar Prettier en VS Code y no morir en el intento"
description: "Como activar Prettier con VS Code y no morir en el intento"
excerpt_separator: "<!--more-->"
categories:
  - Blog
tags:
  - VS Code
  - JavaScript
  - TypeScript
comments: true
share: true
---

![image-center]({{ '/images/blogposts/2022-02-25-cat-computer.gif' | absolute_url }}){: .align-center}

# Prettier: se me olvida ponerme guapo

Si sabes lo que es prettier, sabes que puede ser lo más útil para tener el código bien formateado, o lo que más te saque de tus casillas editando código. Si no sabes lo que es, te recomiendo usarlo [https://prettier.io/docs/en/](https://prettier.io/docs/en/).

Ahora, el truco está en que cuando instalas el plugin de VS Code, no basta con instalarlo... hay que hacer lo siguiente `RTFM`, punto !!!

Recordatorio para mi mismo...

<!--more-->

Cuando instalas la extensión queda claro que debes activarlo como `Default Formatter` en `VS Code Settings`. Para ello, `SHIFT + CMD  + P` para abrir la paleta de comandos y filtra por `opensettingsjson` `workbench` & `user` y puede ser utilizado para TODOS los lenguajes o alguno específico. Por ejemplo, para JavaScript:

```json
{
  "editor.defaultFormatter": "esbenp.prettier-vscode",
  "[javascript]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  }
}
```

Tienes más dudas o prefieres verlo en una píldora? Este mini-video [https://www.youtube.com/watch?v=z9K1XBf01ls](https://www.youtube.com/watch?v=z9K1XBf01ls) te lo explica.
