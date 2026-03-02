---
title: "The Earth is moviing under"
description: "So many earthquakes in the Canary Islands during the last weeks. We need to stay informed."
excerpt_separator: "<!--more-->"
categories:
  - Actualidad
tags:
  - Canarias
  - Canary Islands
  - macOS
comments: true
share: true
---

![image-center]({{ '/images/blogposts/20260301-teide.jpg' | absolute_url }}){: .align-center}


# Lots of Eartquakes

Now that we have a lot of earthquakes in Tenerife again, it's time to revive an old SwiftUI project which I used back in 2020 to learn Combine Framework to learn how to use the fetching an API and so other things like publishers and listeners. This time I will use Swift Data (no more CoreData non-sense) and update to the latest version of Apple APIs. At the same time i will learn how to share the core codebase to create not only iOS version but also a macOS version, TVOS and a watchOS version.

One day later... and a couple of sessions with Claude Code Sonnet 4.6 and CursorComposer 1.5 and we can say we have a working project with an database of earthquakes and usefull information to stay informed about the earthquakes in the Canary Islands.

I use public data from the Instituto Geográfico Nacional (https://www.ign.es/web/vlc-ultimo-terremoto/-/terremotos-canarias/get10dias) to get the latest earthquakes in the Canary Islands.


Download:

- [Terremotos Canarias](/terremotoscanarias.md)
