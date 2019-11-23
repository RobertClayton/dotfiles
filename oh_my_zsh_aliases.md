## Aliases

| Alias        | Description                                         |
|--------------|-----------------------------------------------------|
| alias-finder | To see if there is an alias defined for the command |
| copydir      | copydir to copy the $PWD.                           |
| copyfile     | copyfile <filename> to copy the file named filename |
| src          | Reload the zsh session                              |

### ls command

| Alias | Command       | Description                                                                    |
|-------|---------------|--------------------------------------------------------------------------------|
| l     | `ls -lFh`     | List files as a long list, show size, type, human-readable                     |
| la    | `ls -lAFh`    | List almost all files as a long list show size, type, human-readable           |
| lr    | `ls -tRFh`    | List files recursively sorted by date, show type, human-readable               |
| lt    | `ls -ltFh`    | List files as a long list sorted by date, show type, human-readable            |
| ll    | `ls -l`       | List files as a long list                                                      |
| ldot  | `ls -ld .*`   | List dot files as a long list                                                  |
| lS    | `ls -1FSsh`   | List files showing only size and name sorted by size                           |
| lart  | `ls -1Fcart`  | List all files sorted in reverse of create/modification time (oldest first)    |
| lrt   | `ls -1Fcrt`   | List files sorted in reverse of create/modification time(oldest first)         |

### File handling

| Alias | Command               | Description                                                                        |
|-------|-----------------------|------------------------------------------------------------------------------------|
| rm    | `rm -i`               | Remove a file                                                                      |
| cp    | `cp -i`               | Copy a file                                                                        |
| mv    | `mv -i`               | Move a file                                                                        |
| zshrc | `${=EDITOR} ~/.zshrc` | Quickly access the ~/.zshrc file                                                   |
| dud   | `du -d 1 -h`          | Display the size of files at depth 1 in current location in human-readable form    |
| duf   | `du -sh`              | Display the size of files in current location in human-readable form               |
| t     | `tail -f`             | Shorthand for tail which outputs the last part of a file                           |

### find and grep

| Alias | Command                                             | Description                             |
|-------|-----------------------------------------------------|-----------------------------------------|
| fd    | `find . -type d -name`                              | Find a directory with the given name    |
| ff    | `find . -type f -name`                              | Find a file with the given name         |
| grep  | `grep --color`                                      | Searches for a query string             |
| sgrep | `grep -R -n -H -C 5 --exclude-dir={.git,.svn,CVS}`  | Useful for searching within files       |

### Other

| Alias     | Command             | Description                                                 |
|-----------|---------------------|-------------------------------------------------------------|
| h         | `history`           | Lists all recently used commands                            |
| hgrep     | `fc -El 0 \| grep`  | Searches for a word in the list of previously used commands |
| help      | `man`               | Opens up the man page for a command                         |
| p         | `ps -f`             | Displays currently executing processes                      |
| sortnr    | `sort -n -r`        | Used to sort the lines of a text file                       |
| unexport  | `unset`             | Used to unset an environment variable                       |

### Docker Compose

| Alias     | Command                  | Description                                                      |
|-----------|--------------------------|------------------------------------------------------------------|
| dco       | `docker-compose`         | Docker-compose main command                                      |
| dcb       | `docker-compose build`   | Build containers                                                 |
| dce       | `docker-compose exec`    | Execute command inside a container                               |
| dcps      | `docker-compose ps`      | List containers                                                  |
| dcrestart | `docker-compose restart` | Restart container                                                |
| dcrm      | `docker-compose rm`      | Remove container                                                 |
| dcr       | `docker-compose run`     | Run a command in container                                       |
| dcstop    | `docker-compose stop`    | Stop a container                                                 |
| dcup      | `docker-compose up`      | Build, (re)create, start, and attach to containers for a service |
| dcupd     | `docker-compose up -d`   | Same as `dcup`, but starts as daemon                             |
| dcdn      | `docker-compose down`    | Stop and remove containers                                       |
| dcl       | `docker-compose logs`    | Show logs of container                                           |
| dclf      | `docker-compose logs -f` | Show logs and follow output                                      |
| dcpull    | `docker-compose pull`    | Pull image of a service                                          |
| dcstart   | `docker-compose start`   | Start a container                                                |

### Git

| Alias                | Command                                                                                                                       |
|:---------------------|:------------------------------------------------------------------------------------------------------------------------------|
| g                    | git                                                                                                                           |
| ga                   | git add                                                                                                                       |
| gaa                  | git add --all                                                                                                                 |
| gapa                 | git add --patch                                                                                                               |
| gau                  | git add --update                                                                                                              |
| gav                  | git add --verbose                                                                                                             |
| gap                  | git apply                                                                                                                     |
| gb                   | git branch                                                                                                                    |
| gba                  | git branch -a                                                                                                                 |
| gbd                  | git branch -d                                                                                                                 |
| gbda                 | git branch --no-color --merged \| command grep -vE "^(\+|\*\|\s*(master\|develop\|dev)\s*$)" \| command xargs -n 1 git branch -d |
| gbD                  | git branch -D                                                                                                                 |
| gbl                  | git blame -b -w                                                                                                               |
| gbnm                 | git branch --no-merged                                                                                                        |
| gbr                  | git branch --remote                                                                                                           |
| gbs                  | git bisect                                                                                                                    |
| gbsb                 | git bisect bad                                                                                                                |
| gbsg                 | git bisect good                                                                                                               |
| gbsr                 | git bisect reset                                                                                                              |
| gbss                 | git bisect start                                                                                                              |
| gc                   | git commit -v                                                                                                                 |
| gc!                  | git commit -v --amend                                                                                                         |
| gcn!                 | git commit -v --no-edit --amend                                                                                               |
| gca                  | git commit -v -a                                                                                                              |
| gca!                 | git commit -v -a --amend                                                                                                      |
| gcan!                | git commit -v -a --no-edit --amend                                                                                            |
| gcans!               | git commit -v -a -s --no-edit --amend                                                                                         |
| gcam                 | git commit -a -m                                                                                                              |
| gcsm                 | git commit -s -m                                                                                                              |
| gcb                  | git checkout -b                                                                                                               |
| gcf                  | git config --list                                                                                                             |
| gcl                  | git clone --recurse-submodules                                                                                                |
| gclean               | git clean -id                                                                                                                 |
| gpristine            | git reset --hard && git clean -dfx                                                                                            |
| gcm                  | git checkout master                                                                                                           |
| gcd                  | git checkout develop                                                                                                          |
| gcmsg                | git commit -m                                                                                                                 |
| gco                  | git checkout                                                                                                                  |
| gcount               | git shortlog -sn                                                                                                              |
| gcp                  | git cherry-pick                                                                                                               |
| gcpa                 | git cherry-pick --abort                                                                                                       |
| gcpc                 | git cherry-pick --continue                                                                                                    |
| gcs                  | git commit -S                                                                                                                 |
| gd                   | git diff                                                                                                                      |
| gdca                 | git diff --cached                                                                                                             |
| gdcw                 | git diff --cached --word-diff                                                                                                 |
| gdct                 | git describe --tags $(git rev-list --tags --max-count=1)                                                                      |
| gds                  | git diff --staged                                                                                                             |
| gdt                  | git diff-tree --no-commit-id --name-only -r                                                                                   |
| gdv                  | git diff -w $@ \| view -                                                                                                      |
| gdw                  | git diff --word-diff                                                                                                          |
| gf                   | git fetch                                                                                                                     |
| gfa                  | git fetch --all --prune                                                                                                       |
| gfg                  | git ls-files \| grep                                                                                                          |
| gfo                  | git fetch origin                                                                                                              |
| gg                   | git gui citool                                                                                                                |
| gga                  | git gui citool --amend                                                                                                        |
| ggf                  | git push --force origin $(current_branch)                                                                                     |
| ggfl                 | git push --force-with-lease origin $(current_branch)                                                                          |
| ggl                  | git pull origin $(current_branch)                                                                                             |
| ggp                  | git push origin $(current_branch)                                                                                             |
| ggpnp                | ggl && ggp                                                                                                                    |
| ggpull               | git pull origin "$(git_current_branch)"                                                                                       |
| ggpur                | ggu                                                                                                                           |
| ggpush               | git push origin "$(git_current_branch)"                                                                                       |
| ggsup                | git branch --set-upstream-to=origin/$(git_current_branch)                                                                     |
| ggu                  | git pull --rebase origin $(current_branch)                                                                                    |
| gpsup                | git push --set-upstream origin $(git_current_branch)                                                                          |
| ghh                  | git help                                                                                                                      |
| gignore              | git update-index --assume-unchanged                                                                                           |
| gignored             | git ls-files -v \| grep "^[[:lower:]]"                                                                                        |
| git-svn-dcommit-push | git svn dcommit && git push github master:svntrunk                                                                            |
| gk                   | gitk --all --branches                                                                                                         |
| gke                  | gitk --all $(git log -g --pretty=%h)                                                                                          |
| gl                   | git pull                                                                                                                      |
| glg                  | git log --stat                                                                                                                |
| glgp                 | git log --stat -p                                                                                                             |
| glgg                 | git log --graph                                                                                                               |
| glgga                | git log --graph --decorate --all                                                                                              |
| glgm                 | git log --graph --max-count=10                                                                                                |
| glo                  | git log --oneline --decorate                                                                                                  |
| glol                 | git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'                        |
| glols                | git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --stat                 |
| glod                 | git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset'                        |
| glods                | git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset' --date=short           |
| glola                | git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --all                  |
| glog                 | git log --oneline --decorate --graph                                                                                          |
| gloga                | git log --oneline --decorate --graph --all                                                                                    |
| glp                  | `_git_log_prettily`                                                                                                           |
| gm                   | git merge                                                                                                                     |
| gmom                 | git merge origin/master                                                                                                       |
| gmt                  | git mergetool --no-prompt                                                                                                     |
| gmtvim               | git mergetool --no-prompt --tool=vimdiff                                                                                      |
| gmum                 | git merge upstream/master                                                                                                     |
| gma                  | git merge --abort                                                                                                             |
| gp                   | git push                                                                                                                      |
| gpd                  | git push --dry-run                                                                                                            |
| gpf                  | git push --force-with-lease                                                                                                   |
| gpf!                 | git push --force                                                                                                              |
| gpoat                | git push origin --all && git push origin --tags                                                                               |
| gpu                  | git push upstream                                                                                                             |
| gpv                  | git push -v                                                                                                                   |
| gr                   | git remote                                                                                                                    |
| gra                  | git remote add                                                                                                                |
| grb                  | git rebase                                                                                                                    |
| grba                 | git rebase --abort                                                                                                            |
| grbc                 | git rebase --continue                                                                                                         |
| grbd                 | git rebase develop                                                                                                            |
| grbi                 | git rebase -i                                                                                                                 |
| grbm                 | git rebase master                                                                                                             |
| grbs                 | git rebase --skip                                                                                                             |
| grev                 | git revert                                                                                                                   |
| grh                  | git reset                                                                                                                     |
| grhh                 | git reset --hard                                                                                                              |
| groh                 | git reset origin/$(git_current_branch) --hard                                                                                 |
| grm                  | git rm                                                                                                                        |
| grmc                 | git rm --cached                                                                                                               |
| grmv                 | git remote rename                                                                                                             |
| grrm                 | git remote remove                                                                                                             |
| grs                  | git restore                                                                                                                   |
| grset                | git remote set-url                                                                                                            |
| grss                 | git restore --source                                                                                                          |
| grt                  | cd "$(git rev-parse --show-toplevel \|\| echo .)"                                                                             |
| gru                  | git reset --                                                                                                                  |
| grup                 | git remote update                                                                                                             |
| grv                  | git remote -v                                                                                                                 |
| gsb                  | git status -sb                                                                                                                |
| gsd                  | git svn dcommit                                                                                                               |
| gsh                  | git show                                                                                                                      |
| gsi                  | git submodule init                                                                                                            |
| gsps                 | git show --pretty=short --show-signature                                                                                      |
| gsr                  | git svn rebase                                                                                                                |
| gss                  | git status -s                                                                                                                 |
| gst                  | git status                                                                                                                    |
| gsta                 | git stash push                                                                                                                |
| gsta                 | git stash save                                                                                                                |
| gstaa                | git stash apply                                                                                                               |
| gstc                 | git stash clear                                                                                                               |
| gstd                 | git stash drop                                                                                                                |
| gstl                 | git stash list                                                                                                                |
| gstp                 | git stash pop                                                                                                                 |
| gsts                 | git stash show --text                                                                                                         |
| gstall               | git stash --all                                                                                                               |
| gsu                  | git submodule update                                                                                                          |
| gsw                  | git switch                                                                                                                    |
| gswc                 | git switch -c                                                                                                                 |
| gts                  | git tag -s                                                                                                                    |
| gtv                  | git tag \| sort -V                                                                                                            |
| gtl                  | gtl(){ git tag --sort=-v:refname -n -l ${1}* }; noglob gtl                                                                    |
| gunignore            | git update-index --no-assume-unchanged                                                                                        |
| gunwip               | git log -n 1 \| grep -q -c "\-\-wip\-\-" && git reset HEAD~1                                                                  |
| gup                  | git pull --rebase                                                                                                             |
| gupv                 | git pull --rebase -v                                                                                                          |
| gupa                 | git pull --rebase --autostash                                                                                                 |
| gupav                | git pull --rebase --autostash -v                                                                                              |
| glum                 | git pull upstream master                                                                                                      |
| gwch                 | git whatchanged -p --abbrev-commit --pretty=medium                                                                            |
| gwip                 | git add -A; git rm $(git ls-files --deleted) 2> /dev/null; git commit --no-verify --no-gpg-sign -m "--wip-- [skip ci]"        |

### Rails aliases

| Alias | Command                    | Description                                        |
|-------|----------------------------|----------------------------------------------------|
| `rc`  | `rails console`            | Interact with your Rails app from the CLI          |
| `rcs` | `rails console --sandbox`  | Test code in a sandbox, without changing any data  |
| `rd`  | `rails destroy`            | Undo a generate operation                          |
| `rdb` | `rails dbconsole`          | Interact with your db from the console             |
| `rgen`  | `rails generate`           | Generate boilerplate code                          |
| `rgm` | `rails generate migration` | Generate a db migration                            |
| `rp`  | `rails plugin`             | Run a Rails plugin command                         |
| `ru`  | `rails runner`             | Run Ruby code in the context of Rails              |
| `rs`  | `rails server`             | Launch a web server                                |
| `rsd` | `rails server --debugger`  | Launch a web server with debugger                  |
| `rsp` | `rails server --port`      | Launch a web server and specify the listening port |

### Rake aliases

| Alias   | Command                         | Description                                            |
|---------|---------------------------------|--------------------------------------------------------|
| `rdm`   | `rake db:migrate`               | Run pending db migrations                              |
| `rdms`  | `rake db:migrate:status`        | Show current db migration status                       |
| `rdmtc` | `rake db:migrate db:test:clone` | Run pending migrations and clone db into test database |
| `rdr`   | `rake db:rollback`              | Roll back the last migration                           |
| `rdc`   | `rake db:create`                | Create the database                                    |
| `rds`   | `rake db:seed`                  | Seed the database                                      |
| `rdd`   | `rake db:drop`                  | Delete the database                                    |
| `rdrs`  | `rake db:reset`                 | Delete the database and set it up again                |
| `rdtc`  | `rake db:test:clone`            | Clone the database into the test database              |
| `rdtp`  | `rake db:test:prepare`          | Duplicate the db schema into your test database        |
| `rdsl`  | `rake db:schema:load`           | Load the database schema                               |
| `rlc`   | `rake log:clear`                | Clear Rails logs                                       |
| `rn`    | `rake notes`                    | Search for notes (`FIXME`, `TODO`) in code comments    |
| `rr`    | `rake routes`                   | List all defined routes                                |
| `rrg`   | `rake routes | grep`            | List and filter the defined routes                     |
| `rt`    | `rake test`                     | Run Rails tests                                        |
| `rmd`   | `rake middleware`               | Interact with Rails middlewares                        |
| `rsts`  | `rake stats`                    | Print code statistics                                  |

### Utility aliases

| Alias     | Command                       | Description                                    |
|-----------|-------------------------------|------------------------------------------------|
| `devlog`  | `tail -f log/development.log` | Show and follow changes to the development log |
| `prodlog` | `tail -f log/production.log`  | Show and follow changes to the production log  |
| `testlog` | `tail -f log/test.log`        | Show and follow changes to the test log        |

### Environment settings

| Alias | Command                 | Description                     |
|-------|-------------------------|---------------------------------|
| `RED` | `RAILS_ENV=development` | Sets `RAILS_ENV` to development |
| `REP` | `RAILS_ENV=production`  | Sets `RAILS_ENV` to production  |
| `RET` | `RAILS_ENV=test`        | Sets `RAILS_ENV` to test        |

### Ruby

| Alias | Command                                | Description                                          |
|-------|----------------------------------------|------------------------------------------------------|
| rb    | `ruby`                                 | The Ruby command                                     |
| sgem  | `sudo gem`                             | Run sudo gem on the system ruby, not the active ruby |
| rfind | `find . -name "*.rb" \| xargs grep -n` | Find ruby file                                       |
| gin   | `gem install`                          | Install a gem into the local repository              |
| gun   | `gem uninstall`                        | Uninstall gems from the local repository             |
| gli   | `gem list`                             | Display gems installed locally                       |
