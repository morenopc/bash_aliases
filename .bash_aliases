# My alias definitions.
#
# Reload bash's .bash_aliases without logging out and back in again.
# $ . ~/.bash_aliases

# APT
alias search='apt search'
alias update='sudo apt update'
alias upgrade='sudo apt upgrade'
alias install='sudo apt install'
alias autoremove='sudo apt autoremove'

# TAR
alias untar='tar -xzf'
alias otar='tar -zcvf'

# FIND
alias findd='find -type d -name'
alias findf='find -name'

# PYTHON / DJANGO
alias clean_pyc='find . -type f -name "*.pyc" -delete'
alias clean_py3='find . | grep -E "(__pycache__|\.pyc|\.pyo$)" | xargs rm -rf'
alias grepcode='grep -Rs --exclude-dir=migrations --exclude=*.*{min.css,min.js,pyc}'

# JSON
# echo '{"foo": "lorem", "bar": "ipsum"}' | python2 -m json.tool
# echo '{"foo": "lorem", "bar": "ipsum"}' | prettyjson
alias prettyjson='python2 -m json.tool'

# LIST
alias las='ls -la'

# UBUNTU
alias cd..='cd ..'
alias deb='sudo dpkg -i'
# ubuntu version
ubuntu () {
    if [ -z "$1" ]; then
        echo "Perhaps you meant 'ubuntu -v'?"
    else
        if [ "$1" = "-v" ]; then
            lsb_release -a
        else
            echo "ERROR: strange time detected: $1"
        fi
    fi
}
alias distro='lsb_release -a'

# GIT
parse_git_branch() {
 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
if [ "$color_prompt" = yes ]; then
 PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[01;31m\]$(parse_git_branch)\[\033[00m\]\$ '
else
 PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w$(parse_git_branch)\$ '
fi
