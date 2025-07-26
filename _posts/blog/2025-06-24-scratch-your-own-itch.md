---
title: "Scratch your own itch"
description: "Scratch your own itch"
excerpt_separator: "<!--more-->"
categories:
  - Inteligencia Artificial
tags:
  - AI
  - IA
  - Product Management
  - Productivity
  - macOS Apps
comments: true
share: true
---

# Scratching My Own Itch: Why I Built `Focus Note`

If you are one of those who spend lots of time in front of a computer and you write a lot of text, and I mean, A LOT, this might be familiar for you.

For years, my digital life has revolved around the idea of producing, storing and organizing content, specially text in the form of documents, notes, ideas, thoughts, presentations, manuals, instructions, etc. I've used a vast collection of applications and always ended up storing them all spread across a dozen different apps and formats. Each application promised a revolutionary way to organize my thinking, but each one ultimately fell short. Some were bloated with features I never used, turning the simple act of jotting down a thought into a complex task. Others were too rigid, forcing me into workflows that just didn't feel natural. It always felt unnatural firing up Micrsofot Word for just jotting down a thought.

I’m a firm believer in the “scratch your own itch” philosophy. When you can’t find the tool you need, nowadays with the help of AI, you can build it. That’s what this story is all about. This is the story of a journey to build `Focus Note`.

![image-center]({{ '/images/blogposts/2025-06-24-from-idea-to-app.png' | absolute_url }}){: .align-center}

<!--more-->

As a professional, I prefer the flexibility and accessibility of digital text, but I've found that working on a computer can be a breeding ground for distractions. The endless options for formatting and styling content can be overwhelming, making it challenging to focus solely on the writing itself. In contrast, a blank sheet of paper and a pen offer a refreshing simplicity, allowing me to concentrate on the content without the constant temptation of digital distractions. I always wanted a space where I could just write, without the constant distraction of menus, buttons, and complicated formatting options. I needed a tool that would help me focus, not one that would pull my attention in a million different directions.

I always wanted to have a digital tool that is distraction-free providing an environment that fosters focus and productivity, but no one offered such a product. So, I thought, "Can I build it?" For years, this was an overwhelming project, but not with the aid of AI Coding Agents. I thought, "Maybe it is time that I can create it myself." I could finally create (almost?) the exact tool I had been searching for, tailored to my specific needs and preferences.

And so, the journey of creating `Focus Note` began with the goal of creating a minimalist, distraction-free markdown editor for macOS, designed for one thing and one thing only: focused writing. The value should be in the simplicity of the tool, not in the complexity of the features. There are several tools that are great for taking notes, but none of them are great for focused writing. And the ones that are great for focused writing, are either paid, notes are stored in a proprietary format, or they are too complex to use.

Therefore, I decided to build my own. `Focus Note` is designed to solve my personal pain points in both my professional and personal life. It’s for those who, like me, value a minimalist, distraction-free writing environment. It’s for anyone who wants to focus on their craft, take clear and concise notes, or draft technical articles without unnecessary complexity. It’s also for those who prioritize privacy and want to keep their data in their own hands, or for those who need a lightweight tool to capture their thoughts on the go. It is also for those who value the power of the keyboard, not only for writing but using it without leaving the keyboard, and of course, use it as a tool to think. Open Source, and free.

## More Than Just a Note-Taking App

From the very beginning, I knew that `Focus Note` had to be more than just a simple text editor. I wanted to create a tool that would seamlessly integrate into my workflow and help me stay organized without adding unnecessary complexity. Here are some of the features I’m most proud of:

- **A Beautiful Markdown Editor**: I’m a huge fan of Markdown, and I wanted to create an editor that was not only functional but also a joy to use. The result is a simple yet powerful editor that lets you format your notes with ease, with a focus on a delightful inline editing experience. Markdown's minimal formatting and structure allow you to focus on the content of your notes, rather than their appearance, making it an ideal choice for those who value simplicity and clarity.

- **Tags for Organization**: I’ve always found traditional folder-based organization to be a bit clunky. With Focus Note, you can simply organize your notes with tags, making it easy to find what you’re looking for, no matter how many notes you have.

- **The “Note Dying” System**: This is a feature that I’m particularly excited about. The idea is simple: if you don’t revisit a note within a certain period of time, the notes “dies” and is automatically archived by the app. This encourages you to regularly review your notes and decide what’s important and what’s not, helping you to keep your workspace clean and clutter-free. An important aspect of an important note is giving it a name. Unnamed notes are simply considered as jotdowns, and therefore they can be deleted without any consequences. In any case, the app has a trash bin to recover notes that might have been automatically removed, before they are permanently deleted from the file system.

- **Local-First and Privacy-Focused**: In a world where cloud-based services dominate, wanted to create a tool that puts you in control of your data. By storing your notes in a simple markdown format directly on your device, you can rest assured that your data remains private and secure.

## The Journey Has Just Begun

Building `Focus Note` it's been an incredible journey so far. It started as a simple idea, a solution to my own problem, and it has grown into something that I’m truly proud of. But this is just the beginning. I have a long list of features that I want to add, and I’m excited to continue to improve and refine `Focus Note` over time.

One of the most rewarding aspects of building `Focus Note` has been the opportunity to explore the capabilities of AI in app development. A nice by-product of building apps with AI is learning and crafting `a system (system, workflow, process or methodology) that allows you, as an engineer, to use AI to build systems that help you build other systems`.

With each update, I've been thrilled to see the app grow, but also the way the development process has improved, thanks to the evolving methodology I've employed. Initially, this process began with simple code generation prompts and copy pasting from the code editor to ChatGPT, and vice versa. then using more structure using `Prompt Engineering`. Over time, my process has transformed into a more sophisticated approach. This new process involves multiple iterations, refinements, and the use of markdown files to provide better planning and context for the AI. This evolution simply followed an engineering approach: define a system to guide the AI and feed small tasks that I was sure it could handle. Using `Custom GPTs` or `Google Gemini Gems` instead of fully fledge `LangChain Agents` or `CrewAI`, which I tested to provide a persona approach. But then I found a simpler way to use AI to create my own team by hiring a Product Manager, a UX/UI Designer, an Architect, and a Developer, all within Cursor. This has been recently coined as `Context Engineering`. As models improved and context got larger, the better the results. Additionally, I've benefited greatly from engaging with the nascent AI Dev Agents Community, where I've validated some of my ideas and learned from others. Credits to methodologies like `Kline Memory Bank`, `Task Master` and `BMAD Method`.

Another great lesson learned is the fact that it's not about `using the best tool`. It's about building a process, a system, a workflow, a methodology, a way to use AI to build other systems. That is your tool as an engineer that is augmented by AI. This continuous process improvement has been invaluable, and I look forward to sharing more insights in future posts. First with ChatGPT, then with Cursor, Gemini and now starting with Claude, the system continues to evolve.

The main features I want to add in the future are:

- **Daily Notes and Calendar View**: I’m a big believer in the power of daily journaling, and I wanted to make it as easy as possible to capture my thoughts, ideas and keep track of my daily activities and agenda, even my todos. With `Focus Note`, you can easily store daily notes and visualize them on a calendar view, giving you a bird’s-eye view of your progress over time.

- **Note Linking**: Inspired by tools like Obsidian, I wanted to create a way to easily link notes together, creating a web of interconnected ideas. With `Focus Note`, you can easily create links between your notes, helping you to see the connections between your thoughts and ideas.

I’m a one-person team, and I’m trying to learn to create a `system to build other systems with AI`. In the meantime, I'm slowly building `Focus Note` and I'm open to feedback and suggestions. First version of the app will be available for free download in the next weeks.
