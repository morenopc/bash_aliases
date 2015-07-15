# My alias definitions.

# APT
alias search='apt-cache search'
alias update='sudo apt-get update'
alias upgrade='sudo apt-get upgrade'
alias apt='sudo apt-get install'

# TAR
alias untar='tar -xzf'
alias tar='tar -zcvf'

# FIND
alias findd='find -type d -name'
alias findf='find -name'

# PYTHON / DJANGO
alias clean_pyc='find . -type f -name "*.pyc" -delete'
alias grepcode='grep -Rs --exclude-dir=migrations --exclude=*.*{min.css,min.js,pyc}'

# ALIASES
alias cd..='cd ..'
alias deb='sudo dpkg -i'
