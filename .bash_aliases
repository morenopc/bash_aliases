# My alias definitions.

# APT
alias search='apt-cache search'
alias update='sudo apt-get update'
alias upgrade='sudo apt-get upgrade'
alias apt='sudo apt-get install'

# TAR
alias untar='tar -xzf'
alias otar='tar -zcvf'

# FIND
alias findd='find -type d -name'
alias findf='find -name'

# PYTHON / DJANGO
alias clean_pyc='find . -type f -name "*.pyc" -delete'
alias clean_py3='py3clean .'
alias grepcode='grep -Rs --exclude-dir=migrations --exclude=*.*{min.css,min.js,pyc}'

# JSON
# echo '{"foo": "lorem", "bar": "ipsum"}' | python2 -m json.tool
# echo '{"foo": "lorem", "bar": "ipsum"}' | prettyjson
alias prettyjson='python2 -m json.tool'

# LIST
alias las='ls -la'

# ALIASES
alias cd..='cd ..'
alias deb='sudo dpkg -i'
