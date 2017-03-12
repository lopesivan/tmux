#!/usr/bin/env bash
#                      __ __       ___
#                     /\ \\ \    /'___`\
#                     \ \ \\ \  /\_\ /\ \
#                      \ \ \\ \_\/_/// /__
#                       \ \__ ,__\ // /_\ \
#                        \/_/\_\_//\______/
#                           \/_/  \/_____/
#                                         Algoritimos
#
#
#       Author: Ivan carlos da Silva Lopes
#         Mail: ivanlopes (at) 42algoritimos (dot) com (dot) br
#      License: gpl
#        Site: http://www.42algoritmos.com.br
#       Phone: +1 561 801 7985
#    Language: Shell Script
#        File: configura.sh
#        Date: Mon 28 Apr 2014 08:35:07 PM BRT
# Description:
#
# ----------------------------------------------------------------------------
#
# ----------------------------------------------------------------------------

##############################################################################
##############################################################################
##############################################################################
# ----------------------------------------------------------------------------
# Run!

files=(
	"tmux"
	"tmuxinator"
)

for f in ${files[*]}; do
  test -L ~/.${f} &&
    rm ${HOME}/.${f}

  echo ln -s ${HOME}/developer/tmux/${f} ${HOME}/.${f}
  ln -s ${HOME}/developer/tmux/${f} ${HOME}/.${f}
done

files=(
  "tmux.conf"
  )

for f in ${files[*]}; do
  test -L ~/.${f} &&
    rm ${HOME}/.${f}

  echo ln -s ${HOME}/.tmux/${f} ${HOME}/.${f}
  ln -s ${HOME}/.tmux/${f} ${HOME}/.${f}
done

# ----------------------------------------------------------------------------
exit 0
