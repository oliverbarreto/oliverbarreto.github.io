---
title: "Do you itch yourself or scratch yourself?"
description: "I you are reading this is becasse that catched your attention !!! Didn't it ??? You need to have a problem to solve before spending time learning new things, and not because they are simply trendy."
excerpt_separator: "<!--more-->"
image: 
  path: /images/blogposts/20220112-image01.jpg
  caption: "What's on my mac? Apps to create a productivity weapon for work, and personal side-projects "
last_modified_at: 2022-03-04T21:00:00-00:00
categories:
  - Blog
tags:
  - Product Management
  - MVP
  - Development
  - SwiftUI
  - Swift
  - Combine
  - AppleScript
comments: true
share: true
---
![image-right]({{ '/images/blogposts/20220112-image02.gif' | absolute_url }}){: .align-right} If you are reading this is becasse that catched your attention !!! Didn't it ??? 

But make no mistake, this is an important thing to understand. Time and resources are limitted so you need to focus your attention.

When you are a dad, and the day has lots of other responsabilities other than spending time on that cool tech side project you have in mind. You need to be laser-focused on what you want to spend your time on. My case is that I've been sseeing lots and lots of people on youtube praising the Swift Combine framework that Apple introduced a couple of years ago. I've been holding on to jump right into it. But this time i had an itch to scratch where combine did come handy.

<!--more-->

Do you create yourself a need when wanting to create a project or application to put in practice a cool technology that you want to grasp or start learnign because of the hype around it ??? Or do you have a problem and then analize how to solve it and finally seek the best way to implement one (or more) soluction to solve the problem, with that cool piece of tech or another less fancy one ??? 

In my case, I needed to create an app to phone launch calls from my mac via my iPhone that provide me with a better "iOS continuity experience" than the one that Apple sells out of the box. If you make lots of phone calls while working on your desk, chaces are that you slow down reaching to your iPhone, searching for a contact and then launching the call. More problems if you have a different set of headphones linked to your computer. It's not a "continium". The problem gets worse if you organize lots of Google Meet calls. Go to the browser, open new call copy and share the link with everyone. A lot of work required.

So this is my own itch. I want to have "Calls on my Mac" but done the rigth way. I need an app to easily seamlessly create calls for me from the mac, via the iPhone, and use the same headset without leaving the keyboard or mouse. Side note here. This comes with a bonus. I don't need to have my iPhone on my desk so I eliminate more distractions.

So now that we have an itch, we should start the process to scratch it. We need a few things before we can solve the problem. And I will be posting about the process of creating this app. "Calls on your Mac". 

I will need to learn about:
1. SwiftUI on the Mac
2. Since the approach of SwiftUI is driven by state changes, and the architecture of reference here is MVVM - Model-View-ViewModel.
3. In MVVM, Swift Combine seems to be a clear winner for dealing with changes in the model and passing state around.
4. How to interact from a mac app to other Apps. This is a large topic by itself, and comes with lots of security concerns, that need at least a small investigation to solve the problem.

In the process I have to pay special attention not to throw resources on not scracthing my app with Async Concurrency framework, the coolest thing around lately, before I have an itch for it. We'll see.

This is the first post. The itch definition. More on how to scratch coming soon. So, if you want to extract one piece of advise from this read, take this: we need to have a problem to solve before spending time learning new things, and not because they are simply trendy.