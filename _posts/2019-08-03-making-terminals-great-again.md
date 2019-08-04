---
title: 'Making Linux shell great again'
date: 2019-08-03
permalink: /posts/2019/08/making-terminals-great-again/
tags:
  - review
  - utils
  - cli
  - productivity
  
---

GUI's are nice and all, but nothing beats command-line for the day to day stuff. I'm a total fan of small productivity tools, and I'm constantly trying to find new ways to hack my bash to do si.... Here are my favorite tools, hacks and dotfiles to increase my productivity in the command-line:

[tmux: A terminal multiplexer](http://tmux.github.io/)
===========

**tmux** is a terminal multiplexer: it enables a number of terminals to be created, accessed, and controlled from a single screen. tmux may be detached from a screen and continue running in the background, then later reattached.

[![tmux_demo](https://asciinema.org/a/260733.svg)](https://asciinema.org/a/260733)

Have you ever lost your SSH session due time-out, or worried about that happening during a big file transfer? I know there are tools such [Gnu Screen](https://www.gnu.org/software/screen/) have been around for years (1987 for Gnu screen in particular) -- however, I feel **tmux** bigest advantage is the fact that it can be increadibly customizable and still not that hard to grasp as with other alternatives such as Screen, I've felt the learning curve was not always worth the time.

[asciinema - Terminal session recorder](https://asciinema.org/)
===========

**asciinema** (formerly ascii.io) is a free and open source solution for recording terminal sessions and sharing them on the web.

If you ever have to create procedures for command line tools, this is the thing for you. You can quickly create animated videos from your command-line and quickly publish them without loosing much time.

[![asciicast](https://asciinema.org/a/17648.svg)](https://asciinema.org/a/17648)

Only downside is that there's no option to save your recordings locally. So if you don't want your recordings to be public in the internet I would recommend using [Terminalizer](https://github.com/faressoft/terminalizer). 

Terminalizer saves your recording to a local GIF file, however since there's no compression the file can get a big big and take an annoying time to render. 

For compression, I recommend using [Gifsicle](https://www.lcdf.org/gifsicle/), which is another great tool for compressing images from the command-line.

[fzf: A command-line fuzzy finder](https://github.com/junegunn/fzf)
===========

**fzf** is a general-purpose command-line fuzzy finder. It's an interactive Unix filter for command-line that can be used with any list; files, command history, processes, hostnames, bookmarks, git commits, etc.

<script id="asciicast-237804" src="https://asciinema.org/a/237804.js" async></script>

Other than the official description, this thing makes you never want to use `find` with bunch of arguments again. You can pipe it or create aliases and key-bindings to help making things ever more fun.

[jq: lightweight and flexible command-line JSON processor](https://stedolan.github.io/jq/)
===========

**jq** is like **sed** for JSON data - you can use it to slice and filter and map and transform structured data with the same ease that sed, awk, grep and friends let you play with text. jq can mangle the data format that you have into the one that you want with very little effort, and the program to do so is often shorter and simpler than you’d expect.

[![asciicast](https://asciinema.org/a/237723.svg)](https://asciinema.org/a/237723)

If you work with json blobs and have to work with API's in the day to day, this is the thing for you.

[pet : CLI Snippet Manager](https://github.com/knqyf263/pet)
===========

Simple command-line snippet manager, written in Go.

I've been using **pet** for only a couple months, but not sure how to live without it anymore. Basically it lets you put all your command cheat-sheets (which usually are a bunch of text files spread around) to a single place.

No more digging around old notes for commands you don't use every day, and also stop loosing time googling stuff you have already googled before but completely forgot to take notes. Take a look on how easy it can be to add/edit stuff to your list of pet commands:

![pet](https://github.com/knqyf263/pet/raw/master/doc/pet01.gif)

I've on my list some really basic stuff like port forward commands and multiple regex stuff that I never remember from the top of my head. Also, you can find lots of curated pet sheets from known names such [HashiCorp](https://github.com/brianshumate/hashipets) or even from the stuff people have stashed on [GitHub](https://github.com/search?l=TOML&q=%22pet%22+%2B+%22snippet.toml%22&type=Code) for their day to day.

[Terminator](https://terminator-gtk3.readthedocs.io/en/latest/)
===========

![terminator-screen](https://terminator-gtk3.readthedocs.io/en/latest/_images/large_example.png)

At its simplest Terminator is a terminal emulator like xterm, gnome-terminal, konsole, etc. At its most complex it lets you fly... metaphorically at least. Take a look at the following list:

- Arrange terminals in a grid-like structure
- Tabs
- Drag and drop re-ordering of terminals
- Lots of keyboard shortcuts
- Save multiple layouts and profiles via GUI preferences editor
- Simultaneous typing to arbitrary groups of terminals
- Extensible through plugins

Been using for years, never gone back after the first install. Tried different terminal emulators, but this was the best fit for me so far.


Dotfiles
===========

As [Rob Pike](https://twitter.com/rob_pike) tells, the history of dot files started with a bug (check the [Origin of Dot File Names](http://xahlee.info/UnixResource_dir/writ/unix_origin_of_dot_filename.html) for the full story).

However, since they are now a part of the Linux/Unix world, its common to find lots of curated dotfiles with some really incredible stuff, here are some of my favorites:

- [unofficial guide to dotfiles on GitHub](https://dotfiles.github.io/)
- [awesome-dotfiles](https://github.com/webpro/awesome-dotfiles)
- [My humble dotfiles](https://github.com/fsilveir/.dotfiles)
