# dotfiles

Dotfiles for bash, ruby, git, etc.

They assume you're using OSX.

## Installation
- [Generate a new SSH key](https://docs.github.com/en/free-pro-team@latest/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
- [Add SSH key to GitHub](https://docs.github.com/en/free-pro-team@latest/github/authenticating-to-github/adding-a-new-ssh-key-to-your-github-account)
- `$ chmod +x install.sh`
- `$ ./install.sh`

### Notes
Thoughtbot's [rcm](https://github.com/thoughtbot/rcm) is used to safely symlink the dotfiles to the home directory. For more detail theres a great tutorial for rcm [here](https://thoughtbot.com/upcase/videos/manage-and-share-your-dotfiles-with-rcm).


### iTerm Shortcuts:
- Send Hex Code `0x1b 0x08` = Delete 1 word
- Send Hex Code `0x1b 0x08` = Delete whole line
- Send Escape Sequence `b` = Move 1 word to the left
- Send Escape Sequence `f` = Move 1 word to the right