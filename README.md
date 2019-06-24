# dotfiles

dotfiles for bash, ruby, git, etc.

They assume you're using OSX.

## Installation

    $ cd ~/.dotfiles
    $ brew tap thoughtbot/formulae
    $ brew install rcm
    $ ./install.sh

It will install Thoughtbot's [rcm](https://github.com/thoughtbot/rcm) and use that to safely symlink the dotfiles, prompting you
if a file already exists. Great tutorial for rcm [here](https://thoughtbot.com/upcase/videos/manage-and-share-your-dotfiles-with-rcm).
