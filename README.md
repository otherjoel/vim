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
* <https://www.swamphogg.com/2015/vim-setup/>

## Custom application icon

1. Downloaded custom icon from repo at <https://github.com/jordwalke/VimBox>
2. In Finder, open `/usr/local/Cellar`
3. Find the MacVim app icon and press `⌘+i` to open the information window
4. Drag the ApplicationIcon.icns onto the little icon in the information window

## Plugins added via git submodule

    $ git submodule add git://github.com/airblade/vim-gitgutter.git ~/.vim/bundle/gitgutter
    $ git submodule add https://github.com/itchyny/lightline.vim.git ~/.vim/bundle/lightline
    $ git submodule add https://github.com/wlangstroth/vim-racket.git ~/.vim/bundle/vim-racket
    $ git submodule add https://github.com/screwloose/nerdtree.git ~/.vim/bundle/nerdtree
    $ git submodule add https://github.com/eedes/vim-pencil.git ~/.vim/bundle/vim-pencil

### Plugins to  consider:

* <https://github.com/reedes/vim-pencil>
