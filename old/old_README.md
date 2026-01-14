# Página web de Ingenieria del Software 2

Esta es la página web de la materia Ingenieria del Software 2 de la Facultad de Ingenieria de la Universidad de Buenos Aires.

# How to add:

All pages should be Jekyll Friendly. First review [Add Content](#add-content)

## New Post

Add new file inside [posts](https://github.com/ingenieria-del-software-2/ingenieria-del-software-2.github.io/tree/master/_posts) with the next filename format

```
YYYY-MM-DD-TITLE.md
```


And use the next format  

```
---
layout: post
title: lorem ipsum 
subtitle: lorem ipsum
bigimg: /img/path.jpg
tags: [tag-1 tag-2]
---

lorem ipsum

```


## New Lesson

Add new section inside [lessons.yml](https://github.com/ingenieria-del-software-2/ingenieria-del-software-2.github.io/blob/master/_data/lessons.yml) with the next format:



```
- title: LESSON TITLE
  years: ["YEAR"]
  sub-title: SUB TITLE
  videos:
    - title: VIDEO TITLE
      link: GOOGLE_DRIVE_MEETING_RECORDING_ID
  resources:
  - title: RESOURCE 1 TITLE
    link: RESOURCE LINK
```   
   
### How find meet recording ID (GOOGLE_DRIVE_MEETING_RECORDING_ID)?

- First enable shared with all (Cualquier usuario de Internet con este enlace puede ver esto)
- Copy the follow section inside the link


```
https://drive.google.com/file/d/1hD2a203hhVRJl0kS1_LsvBdms5dYxU2Y/view?usp=sharing
```

For example

```
https://drive.google.com/file/d/1hD2a203hhVRJl0kS1_LsvBdms5dYxU2Y/view?usp=sharing
```

Copy _1hD2a203hhVRJl0kS1_LsvBdms5dYxU2Y_

## New NavBar Section


Add new section inside *navbar-links* [config.yml](https://github.com/ingenieria-del-software-2/ingenieria-del-software-2.github.io/blob/master/_config.yml) 

## New resource

Add new section inside [resources.yml](https://github.com/ingenieria-del-software-2/ingenieria-del-software-2.github.io/blob/master/_data/resources.yml) with the next format:

```
- title: TITLE
  sub-title: SUB TITLE
  topics:
    - TOPIC 1
    - ...
    - TOPIC N
  links:
    - LINK 1
    - LINK N
```

## New Professor

Add new section inside [professors.yml](https://github.com/ingenieria-del-software-2/ingenieria-del-software-2.github.io/blob/master/_data/professors.yml) with the next format:

```
- name: FIRST NAME LAST NAME 
  pic: /img/professors/IMAGE.jpeg
  mail: EMAIL
  github: GITHUB PROFILE LINK

```


## Add content


Using _Jekyll Theme_  [Beautiful Jekyll](https://github.com/daattali/beautiful-jekyll)

To add pages to your site, you can either write a markdown file (`.md`) or you can write an HTML file directly.  It is much easier to write markdown than HTML, so I suggest you do that (use the [tutorial I mentioned above](http://markdowntutorial.com/) if you need to learn markdown). You can look at some files on this site to get an idea of how to write markdown. To look at existing files, click on any file that ends in `.md`, for example [`aboutme.md`](./aboutme.md). On the next page you can see some nicely formatted text (there is a word in bold, a link, bullet points), and if you click on the pencil icon to edit the file, you will see the markdown that generated the pretty text. Very easy!

In contrast, look at [`index.html`](./index.html). That's how your write HTML - not as pretty. So stick with markdown if you don't know HTML.

Any file that you add inside the [`_posts`](./_posts) directory will be treated as a blog entry.  You can look at the existing files there to get an idea of how to write blog posts.  After you successfully add your own post, you can delete the existing files inside [`_posts`](./_posts) to remove the sample posts, as those are just demo posts to help you learn.

As mentioned previously, you can use [prose.io](http://prose.io/) to add or edit files instead of doing it directly on GitHub, it can be a little easier that way.

## Last important thing: YAML front matter ("parameters" for a page)

In order to have your new pages use this template and not just be plain pages, you need to add [YAML front matter](http://jekyllrb.com/docs/frontmatter/) to the top of each page. This is where you'll give each page some parameters that I made available, such as a title and subtitle. I'll go into more detail about what parameters are available later. If you don't want to use any parameters on your new page (this also means having no title), then use the empty YAML front matter:

```
---
---
```

If you want to use any parameters, write them between the two lines. For example, you can have this at the top of a page:

```
---
title: Contact me
subtitle: Here you'll find all the ways to get in touch with me
---
```

You can look at the top of [`aboutme.md`](./aboutme.md) or [`index.html`](./index.html) as more examples.

**Important takeaway: ALWAYS add the YAML front matter, which is two lines with three dashes, to EVERY page. If you have any parameters, they go between the two lines.**    
If you don't include YAML then your file will not use the template.
