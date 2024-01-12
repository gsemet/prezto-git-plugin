
##################
# Git status (gst)
##################
# Git status
alias gst='git status'


###############
# Git Diff (gd)
###############
# Git diff (colorful)
alias gd='git diff --color'

###############
# Git Pull (gp)
###############
# Git pull
alias gp='git pull'
# Git pull and rebase
alias gpr='git pull --rebase'
alias gprs='git pull --rebase && git submodule update --remote --recursive'
# Git rebase current master branch against master branch on upstream
alias gprum='git pull --rebase --recurse-submodules upstream master'
alias gprom='git pull --rebase --recurse-submodules origin master'

###############
# git push (gP)
###############
# since pushing has much impact than pulling (gp), it use a capital case
# git push
alias gP='git push'
alias gPu='git push upstream'
alias gPum='git push upstream master'
alias gPgPu='git push && git push upstream'
alias gPgPum='git push && git push upstream master'
# git push dry run
alias gPd='git push --dry-run'
# git push --tags
alias gPt='git push --tags'
# git push force
alias gPf='git push --force'
alias gPhm='git push heroku master'
# git push origin
alias gPo='git push origin'
# git push origin force
alias gPof='git push origin --force'
alias gPt='git push --tags'

################
# Git Fetch (gf)
################
# Git fetch current branch
alias gf='git fetch'
# Git fetch all branches
alias gfa='git fetch --all --recurse-submodules'
# reset your work to the latest status of the code base (and fetch all other branches).
# (git fetch all branch and rebase)
alias gfagpr='git fetch --all --recurse-submodules && git pull --rebase --recurse-submodules'
alias gfgpr='git fetch && git pull --rebase'

#################
# Git Commit (gc)
#################
# Git commit
alias gc='git commit -v'
# Git commit amend
alias gc!='git commit -v --amend'
# Git commit all tracked files
alias gca='git commit -v -a'
# Git commit amend all tracked files
alias gca!='git commit -v -a --amend'
# Git commit amend all tracked files
alias gcan!='git commit -v -a -s --no-edit --amend'
# Git commit with message
alias gcmsg='git commit -m'

####################
# Git Checkout (gco)
####################
# git checkout
alias gco='git checkout'
# Git checkout master
alias gcom='git checkout master'
alias gcoB='git checkout -B'

# Git Remote (gre)
alias gre='git remote'
alias grev='git remote -v'
alias gremv='git remote rename'
alias grerm='git remote remove'
alias greset='git remote set-url'
alias greup='git remote update'

# Git Rebase (gr)
alias gr='git rebase -i'
alias grc='git rebase --continue'
alias gra='git rebase --abort'
alias grs='git rebase --skip'
alias grm='git rebase master'

#####################################################
# Git rebase Interactively N commit (rewrite history)
#####################################################
alias gr2='git rebase -i HEAD~2'
alias gr3='git rebase -i HEAD~3'
alias gr4='git rebase -i HEAD~4'
alias gr5='git rebase -i HEAD~5'
alias gr6='git rebase -i HEAD~6'
alias gr7='git rebase -i HEAD~7'
alias gr8='git rebase -i HEAD~8'
alias gr9='git rebase -i HEAD~9'
alias gr10='git rebase -i HEAD~10'

# Git Branch (gb)
alias gb='git branch'
alias gba='git branch -a'
alias gbsutum='git branch --set-upstream-to=upstream/master'
alias git-track-origin-master='git branch --set-upstream-to=origin/master'
alias git-track-upstream-develop='git branch --set-upstream-to=upstream/develop'
alias git-track-upstream-master='gbsutum'

##############
# Git Log (gl)
##############
alias gl='git log'
# Git log graph
alias glg='git log --stat --max-count=10'
# Git log graph with patch content
alias glgp='git log --graph --max-count=10 -p'
## Git log graph limited to 10
alias glgm='git log --graph --max-count=10'
# Git log graph colorful
alias glgg='git log --graph --color'
# Git log graph with all branches
alias glgga='git log --graph --decorate --all'
# one line git log
alias glo='git log --oneline'
alias glol="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias glola="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --all"

######################
# Git Reset Head (grh)
######################
# Soft Reset to HEAD
alias grh='git reset HEAD'
# Hard Reset
alias grH='git reset --hard'
# Hard reset to HEAD
alias grhH='git reset HEAD --hard'
function git-reset-with-submodules() {
  git clean -xfdf
  git submodule foreach --recursive git clean -xfd
  git reset --hard
  git submodule foreach --recursive git reset --hard
  git submodule update --init --recursive
}

function git-submodules-reset() {
  git submodule foreach --recursive git clean -xfd
  git submodule foreach --recursive git reset --hard
  git submodule update --init --recursive
}


################
# Git merge (gm)
################
# Git merge
alias gm='git merge'
# git merge changes from the master branch on the upstream remote
alias gmum='git merge upstream/master'
# git merge changes from the master branch on the origin remote
alias gmom='git merge origin/master'

# Other
# Show contribution scorecard
alias gcount='git shortlog -sn'
# Show current configuration
alias gcl='git config --list'
alias gcp='git cherry-pick'
alias ga='git add'

# See what changed in the current commit
alias gwc='git whatchanged -p --abbrev-commit --pretty=medium'

# Search for a changed file
alias gls='git ls-files | grep'

alias gPoat='git push origin --all && git push origin --tags'
alias gmt='git mergetool --no-prompt'
alias gmtvim='git mergetool --no-prompt --tool=vimdiff'

# Git stash (gsta)
alias gsta='git stash'
alias gstas='git stash show --text'
alias gstap='git stash pop'
alias gstaa='git stash apply'
alias gstad='git stash drop'


# Submodule (S)
alias gS='git submodule'
alias gSa='git submodule add'
alias gSf='git submodule foreach'
alias gSi='git submodule init'
alias gSI='git submodule update --init --recursive'
alias gSl='git submodule status'
alias gSm='git-submodule-move'
alias gSs='git submodule sync'
alias gSu='git submodule update'
alias gSr='git submodule update --remote'
alias gSx='git-submodule-remove'


# Git Gui (gg)
alias gg='git gui citool'
alias gga='git gui citool --amend'

# Gitk
alias gk='\gitk --all --branches'
# show complete history, with dangling commits
alias gitk-entier-history='\gitk --all $(git log -g --pretty=format:%h)'
alias gke='gitk-entier-history'
# Note: if the commit has been cleaned my 'git gc', the dangling commits older than 2 weeks may have been deleted

# Clean
# Remove all .orig, .BASE.*, .REMOTE.*, .LOCAL.*, *.BACKUP files
alias gclean='find $(git rev-parse --show-toplevel) -name "*.orig" -or -name "*_REMOTE_*" -or -name "*_LOCAL_*" -or -name "*_BACKUP_*" -or -name "*_BASE_*" | xargs -I rm -v'
alias gcleanreset='(cd $(git rev-parse --show-toplevel) && git reset --hard && git clean -dfx)'

# Edit global Git configuration files
alias gitconfig="vim ~/.gitconfig"
alias gitmessage="vim ~/.gitmessage"
