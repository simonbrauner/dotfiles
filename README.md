# Dotfiles

A repository containing all my configuration files (with some notes on
how to use them) for various programs (especially GNU Emacs) stored in
Org mode documents.

## Principles

Simplicity and minimalism.

## Warning

Source code blocks are tangled by the `C-c C-v t` keybinding. If there
are files present at the tangling destinations, this will overwrite
them.  Make sure to look at the global `#+property` and local
`#+begin_src` tags and backup the files mentioned in them before you
do any tangling.

## Files

There are only two files so far. One for Emacs - `Emacs.org` and the
other one for everything else - `System.org`.
