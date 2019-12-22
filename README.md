# Docker alias and functions

Useful command line alias for [Docker](https://www.docker.io/).

Blatantly forked from [tcnksm/docker-alias](https://github.com/tcnksm/docker-alias).

You can see all available aliases in the [docker-alias.sh](https://github.com/gko/docker-alias/blob/master/docker-alias.sh).

## Installation

### Manually
```bash
git clone https://github.com/gko/docker-alias
```
then in .bashrc or .zshrc:
```bash
source ./docker-alias/docker-alias.sh
```
### With [antigen](https://github.com/zsh-users/antigen)

In your .zshrc
```sh
antigen bundle gko/docker-alias
```

## Reference

- [Useful Docker Bash functions and aliases](http://kartar.net/2014/03/useful-docker-bash-functions-and-aliases)
- [15 QUICK DOCKER TIPS](https://labs.ctl.io/15-quick-docker-tips/)
