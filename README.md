# Dotfiles

A repository containing all my configuration files (with some notes on
how to use them) for various programs (especially GNU Emacs) stored in
Org mode documents.

## Usage

You somehow managed to find this repository, welcome and feel free to
use anything you see there in your very own dotfiles!

## Warning

Source code blocks are tangled by the `C-c C-v t` keybinding. That's
what I do, however it may probably not be something you should do.  If
there are files present at the tangling destinations, this will
**overwrite** them.  Make sure to look at the global `#+property` and
local `#+begin_src` tags and backup the files mentioned in them before
you do any tangling.

## Principles

Simplicity and minimalism.

## Emacs.org

Emacs configuration, the file that I put most effort in. Heavily
inspired by dozens of internet resources, especially videos - [System
Crafters](https://www.youtube.com/c/systemcrafters), [Emacs
Rocks](http://emacsrocks.com/) and [Emacs
Introduction](https://www.youtube.com/watch?v=B6jfrrwR10k) just to
name a few.

## System.org

So far, file about anything that is not emacs, partially Arch Linux
specific. Nothing advanced. As soon as some topic gets too big, it
will get its own file. Hasn't happened yet...
