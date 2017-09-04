# ==============================
# 11.rbenv.zsh
#
# (c) 2016-2017 Mitsuhiro Mizuno
# ==============================

export RBENV_ROOT="${HOME}/.rbenv"
if [ -d "${RBENV_ROOT}" ]; then
  export PATH="${RBENV_ROOT}/bin:${PATH}"
  eval "$(rbenv init - zsh)"
fi
