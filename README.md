# vim configuration on `vinculus`

*Updated 2020-02-22*

Config is located in `~/.vim`, with `~.vimrc` symlinked to `~/.vim/vimrc`.
This folder is a git repo. For detailed change info, consult the git log.
Both terminal and MacVim use this config.

## Features

For Markdown, Pollen and Scribble files, turns on “Pencil” plugin to automatically hard- or
soft-wrap lines and reflow paragraphs.

## Shortcuts

* `\p` — distraction free “prose” mode (via Goyo)
* `\o` — turn off distraction free mode
* `\l` — Light theme (acme)
* `\d` — Dark theme (onedark)
* `\f` — Toggle font between Courier Prime and IBM Plex Mono (doesn’t work under Windows yet)

## Custom application icon

I don’t really use this anymore since it has to be done every time you update the app.

1. Downloaded custom icon from repo at <https://github.com/jordwalke/VimBox>
2. In Finder, open `/usr/local/Cellar`
3. Find the MacVim app icon and press `⌘+i` to open the information window
4. Drag the `ApplicationIcon.icns` onto the little icon in the information window

## Plugins added via git submodule

Very important that when adding a submodule you do it from the root of your repo and use relative
paths.

The commands below show how existing submodules were added to this repo. You don’t need to run them
again, they are shown for example/documentation purposes only.

    $ git submodule add https://github.com/mhinz/vim-signify.git bundle/vim-signify
    $ git submodule add https://github.com/itchyny/lightline.vim.git bundle/lightline
    $ git submodule add https://github.com/itchyny/vim-gitbranch.git bundle/vim-gitbranch
    $ git submodule add https://github.com/wlangstroth/vim-racket.git bundle/vim-racket
    $ git submodule add https://github.com/screwloose/nerdtree.git bundle/nerdtree
    $ git submodule add https://github.com/reedes/vim-pencil.git bundle/vim-pencil
    $ git submodule add https://github.com/otherjoel/vim-pollen.git bundle/vim-pollen
    $ git submodule add https://github.com/junegunn/goyo.vim.git bundle/goyo

To update all submodules to their latest commits:

    $ git submodule update --remote --merge

## Windows setup

Here are steps I had to take to get this config to work in gVim on Windows 10. 
(Using the approach at <https://stackoverflow.com/a/10622083>)

I cloned my vim repo into `C:\Users\Joel\Documents\code\vim` and created symlinks:

    C:\Users\Joel>mklink /d .vim C:\Users\Joel\Documents\code\vim
    symbolic link created for .vim <<===>> C:\Users\Joel\Documents\code\vim

    C:\Users\Joel>mklink /h _vimrc C:\Users\Joel\Documents\code\vim\vimrc
    Hardlink created for _vimrc <<===>> C:\Users\Joel\Documents\code\vim\vimrc
	
Created `%HOME` environment variable in System Properties→Advanced tab→Environment variables,
pointing to `C:\Users\Joel`.

Set up all submodules:

    ~\Documents\code\vim [master ≡ +0 ~2 -0 !]> git submodule init
    Submodule 'bundle/gitgutter' (git://github.com/airblade/vim-gitgutter.git) registered for path 'bundle/gitgutter'
    [etc...]
    
	~\Documents\code\vim [master ≡ +0 ~2 -0 !]> git submodule update
	Cloning into [etc...]
	Submodule path 'bundle/gitgutter': checked out [etc...]
	

Modified `vimrc` to include Windows-specific checks (see commit `5ec3756`).

## Resources

In making my `vimrc` I consulted these sources:

* <http://marcgg.com/blog/2016/03/01/vimrc-example/> (read Dec 2017)
* <https://coderwall.com/p/yiot4q/setup-vim-powerline-and-iterm2-on-mac-os-x> (read Dec 2017)
* <https://dougblack.io/words/a-good-vimrc.html> (read Dec 2017)
* <https://www.reddit.com/r/vim/wiki/tabstop> (read Dec 2017)
* <https://www.swamphogg.com/2015/vim-setup/> (read Dec 2017)

## Known Issues

I am using [Signify](https://github.com/mhinz/vim-signify) in preference to [vim-gitgutter](https://github.com/airblade/vim-gitgutter) because it supports Fossil as well as Git and I use both. However, this multi-VCS support is not without its quirks:

* As currently configured, the Signify plugin only updates when the buffer is saved. There is an option to have it update continuously, but this setting has the side-effect of auto-saving the buffer after every change. There is some discussion of this in [their GitHub issue #261](https://github.com/mhinz/vim-signify/issues/261).

