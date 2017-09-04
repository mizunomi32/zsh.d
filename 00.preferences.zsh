############################################
#
# 00.preferences.zsh
#
# (c) 2016-2017 Mitsuhiro Mizuno
#
############################################

# 日本語UTF-8環境設定
export LANG=ja_JP.UTF-8

# PATH 追加
export PATH="/usr/local/bin:${HOME}/bin:$PATH"

# beep無効
setopt no_beep

############################################
# 履歴

# 履歴ファイルの保存先
export HISTFILE=${ZSHHOME}/zsh_history

# メモリに保存される履歴の件数
export HISTSIZE=1000

# 履歴ファイルに保存される履歴の件数
export SAVEHIST=100000

# 重複する履歴を記録しない
setopt hist_ignore_dups

# 開始と終了を記録
setopt EXTENDED_HISTORY

# 複数ターミナル間で履歴の共有
setopt share_history

# スペースから始まるコマンド行は履歴に含まない
setopt hist_ignore_space

# 履歴の余分なスペース除去
setopt hist_reduce_blanks

############################################
# 補完

# 自動補完の有効化
autoload -U compinit && compinit

# コマンドミスを修正
setopt correct

# 補完で大文字にもマッチ
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# 補完後、メニュー選択モードになり左右キーで移動が出来る
zstyle ':completion:*:default' menu select=2

# ディレクトリ名でcd
setopt auto_cd

# sudo の後ろも補完
zstyle ':completion:*:sudo:*' command-path

# コマンドを途中まで入力後、historyから絞り込み
# 例 ls まで打ってCtrl+pでlsコマンドをさかのぼる、Ctrl+bで逆順
autoload -Uz history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^p" history-beginning-search-backward-end
bindkey "^b" history-beginning-search-forward-end

