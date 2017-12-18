# vim configuration on `vinculus`

*Updated 2017-12-17*

Config is located in `~/.vim`, with `~.vimrc` symlinked to `~/.vim/vimrc`.
This folder is a git repo. For detailed change info, consult the git log.
Both terminal and MacVim use this config.

In making my `vimrc` I consulted these sources:

* <http://marcgg.com/blog/2016/03/01/vimrc-example/> (read Dec 2017)
* <https://coderwall.com/p/yiot4q/setup-vim-powerline-and-iterm2-on-mac-os-x> (read Dec 2017)
* <https://dougblack.io/words/a-good-vimrc.html> (read Dec 2017)
* <https://www.reddit.com/r/vim/wiki/tabstop> (read Dec 2017)
* <https://www.swamphogg.com/2015/vim-setup/> (read Dec 2017)

## Custom application icon

1. Downloaded custom icon from repo at <https://github.com/jordwalke/VimBox>
2. In Finder, open `/usr/local/Cellar`
3. Find the MacVim app icon and press `⌘+i` to open the information window
4. Drag the `ApplicationIcon.icns` onto the little icon in the information window

## Plugins added via git submodule

    $ git submodule add git://github.com/airblade/vim-gitgutter.git ~/.vim/bundle/gitgutter
    $ git submodule add https://github.com/itchyny/lightline.vim.git ~/.vim/bundle/lightline
    $ git submodule add https://github.com/wlangstroth/vim-racket.git ~/.vim/bundle/vim-racket
    $ git submodule add https://github.com/screwloose/nerdtree.git ~/.vim/bundle/nerdtree
    $ git submodule add https://github.com/eedes/vim-pencil.git ~/.vim/bundle/vim-pencil

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
