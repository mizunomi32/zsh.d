# ===============================
# 01.pyenv.zsh
#
# (c) 2016-2017 Mitsuhiro Mizuno
# ===============================

export PYENV_ROOT="${HOME}/.pyenv"
if [ -d "${PYENV_ROOT}" ]; then
  export PATH="${PYENV_ROOT}/bin:${PATH}"
  eval "$(pyenv init -)"
fi
