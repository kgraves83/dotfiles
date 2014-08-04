# Set Path
export PATH=~/bin:vendor/bin:/usr/local/bin:/usr/local/sbin:/usr/local/share/npm/bin:/usr/local/opt/ruby/bin:$PATH


# Colors
txtblk='\e[0;30m' # Black - Regular
txtred='\e[0;31m' # Red
txtgrn='\e[0;32m' # Green
txtylw='\e[0;33m' # Yellow
txtblu='\e[0;34m' # Blue
txtpur='\e[0;35m' # Purple
txtcyn='\e[0;36m' # Cyan
txtwht='\e[0;37m' # White

bldblk='\e[1;30m' # Black - Bold
bldred='\e[1;31m' # Red
bldgrn='\e[1;32m' # Green
bldylw='\e[1;33m' # Yellow
bldblu='\e[1;34m' # Blue
bldpur='\e[1;35m' # Purple
bldcyn='\e[1;36m' # Cyan
bldwht='\e[1;37m' # White

unkblk='\e[4;30m' # Black - Underline
undred='\e[4;31m' # Red
undgrn='\e[4;32m' # Green
undylw='\e[4;33m' # Yellow
undblu='\e[4;34m' # Blue
undpur='\e[4;35m' # Purple
undcyn='\e[4;36m' # Cyan
undwht='\e[4;37m' # White

bakblk='\e[40m'   # Black - Background
bakred='\e[41m'   # Red
badgrn='\e[42m'   # Green
bakylw='\e[43m'   # Yellow
bakblu='\e[44m'   # Blue
bakpur='\e[45m'   # Purple
bakcyn='\e[46m'   # Cyan
bakwht='\e[47m'   # White

txtrst='\e[0m'    # Text Reset


# Use vi mode
set -o vi

# Set custom prompt
print_before_prompt () {
    printf "\n$USER@$HOSTNAME ∙ $(pwd | sed 's/\/Users\/kgraves/~/') $(vcprompt --staged ' \e[0;32m√\e[0m' --modified ' \e[0;33m✗\e[0m' --untracked ' \e[0;31m✗\e[0m' -f '∙ %s:%b%a%m%u')\n"
}
PROMPT_COMMAND=print_before_prompt
PS1='▶▶▶ '

# Set terminal type
export TERM=xterm-256color

# Make ls colorful
export CLICOLOR=1

# Make grep highlight matches
export GREP_OPTIONS='--color=auto'

# Color themes
#export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
# Solarized like theme
#export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD

# ls aliases
alias ll='ls -lh'
alias lt='ls -lhtT'
alias la='ls -a'
alias lla='ls -lha'

# Prevent fat fingers from deleting files
alias rm='rm -i'

# git aliases
alias gi='git init'
alias ga='git add'
alias gaa='git add .'
alias gcl='git clone'
alias grm='git rm'
alias gmv='git mv'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gcom='git checkout master'
alias gc='git commit'
alias gcf='git commit -F'
alias gcm='git commit -m'
alias gca='git commit -a'
alias gcaf='git commit -a -F'
alias gcam='git commit -a -m'
alias gp='git push'
alias gpa='git push --all'
alias gpt='git push --tags'
alias gpush='git push origin; git push --tags origin'
alias gbak='git push --all bak; git push --tags bak'
alias gpl='git pull'
alias gb='git branch'
alias gm='git merge'
alias gr='git rebase'
alias gs='git status'
alias gd='git diff --color'
alias gdh='git diff --color HEAD'
alias gh='git hist'
alias gl='git log'
alias gk='gitk &'
alias gt='git tag'

# Web dev aliases
alias woerr='tail -50 /Volumes/wo2dev/WINDOWS/temp/php-errors.log | less'
alias art='php artisan'
alias artser='php artisan serve --host 0.0.0.0'
alias artda='php artisan dump-autoload'
alias httpdconf='sudo vi /etc/apache2/httpd.conf'
alias vhostconf='sudo vi /etc/apache2/extra/httpd-vhosts.conf'
alias hostsconf='sudo vi /etc/hosts'
alias xdconf='vi /usr/local/etc/php/5.4/conf.d/ext-xdebug.ini'
alias phpconf='vi /usr/local/etc/php/5.4/php.ini'
alias cmi='composer install'
alias cmu='composer update'
alias cmda='composer dump-autoload'
alias pu='phpunit'
alias crf='codecept run functional'
alias cru='codecept run unit'
alias workl='ssh kgraves@ns1.pcfruit.com -L 8000:10.2.2.120:8000 -L 3306:10.2.2.120:3306'

# tmux aliases
alias tls='tmux ls'
alias ta='tmux attach -t'
alias tn='tmux new -s'

# Make colors show correctly in tmux
#alias tmux='TERM=xterm-256color tmux '

# Generate random password
alias pass='openssl rand -base64 9'

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
