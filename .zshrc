watch=(notme)
alias ls='ls -FGC'
export LESS='-R'
#export LESSOPEN='|lessfilter.sh %s'
function poi(){mv $* ~/.Trash/;}
#function rm(){mv $* ~/.Trash/;}
alias grep='grep --color=auto'
alias rm='rm -i'
autoload zmv
alias zmv='noglob zmv'
##強力な補完機能を追加
 # tab補完で大文字小文字を区別しない
autoload -U compinit
compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
##色を使えるようにする
autoload -U colors
colors
#eval `dircolors`
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
##セットオプション
setopt NO_CLOBBER
setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_DUPS
setopt AUTO_CD
setopt EXTENDED_GLOB
setopt NOHUP
setopt NUMERIC_GLOB_SORT
setopt AUTO_PUSHD
SAVEHIST=10000
HISTSIZE=10000
HISTFILE=~/.zhistory

### プロンプト ###
### vcs infomation
autoload -Uz vcs_info
zstyle ':vcs_info:*' formats '[%b]'
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () {
    psvar=()
    LANG=en_US.UTF-8 vcs_info
    [[ -n "$vcs_info_msg_0_" ]] && psvar[1]="$vcs_info_msg_0_"
}
GIT_STATUS='%1(v|%F{green}%1v%f|)'

PS1='%F{blue}%B%n%b%f'${GIT_STATUS}'%% '
RPS1='[%~]'
