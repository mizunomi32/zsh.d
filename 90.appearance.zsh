# ==============================
#
# 90.appearance.zsh
#
# (c) 2016-2017 Mitsuhiro Mizuno
# ==============================
autoload -U colors
colors

PROMPT='%n@%m
%{${fg[green]}%}[%~]%{${reset_color}%} > '

PROMPT2=" ->"

# git設定
RPROMPT="%{${fg[blue]}%}(%T)o.%{${reset_color}%}"


# git 表示
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"
zstyle ':vcs_info:*' formats "%F{green}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () { vcs_info }
RPROMPT='${vcs_info_msg_0_}'$RPROMPT

