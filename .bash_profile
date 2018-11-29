JIRA_VALIDATION_REGEX="([A-z]{2,10}-[0-9]+)([\s:_-][.\n\r]*)?"
WCD=/c/WCDE80
WRKSPC=$WCD/workspace
alias ws='cd $WRKSPC'
alias wss='cd $WRKSPC/Stores'
alias wsl="cd $WRKSPC/WebSphereCommerceServerExtensionsLogic"
alias update="(cd $WCD && git all pull; ws && git all pull)"
alias develop="git checkout develop"
alias clean="clear && clear"

#Remove all merged branches
alias rmrged="git for-each-ref --format '%(refname:short)' refs/heads | grep -v master | grep -v develop | xargs git branch -D"
alias listRemote="git for-each-ref --format='%(committerdate) %09 %(authorname) %09 %(refname)' | sort -k5n -k2M -k3n -k4n"

alias rbash="echo 'Make my day' && . ~/.bash_profile"
alias ebash="vi ~/.bash_profile"
alias hack="(wsl && git apst 'cart hack')"
alias unhack="(cd $WRKSPC/WebSphereCommerceServerExtensionsLogic && git rmst 'cart hack')"