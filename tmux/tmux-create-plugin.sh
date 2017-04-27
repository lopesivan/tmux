#!/usr/bin/env bash

test -n "$DEBUG" && set -x

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
#      Author: Ivan Lopes
#        Mail: ivan@42algoritmos.com.br
#        Site: http://www.42algoritmos.com.br
#     License: gpl
#       Phone: +1 561 801 7985
#    Language: Shell Script
#        File: create.sh
#        Date: Qui 27 Abr 2017 19:59:56 BRT
# Description:
# ----------------------------------------------------------------------------
# Modo strict
set -euo pipefail
# ----------------------------------------------------------------------------

##############################################################################
##############################################################################
##############################################################################

# ----------------------------------------------------------------------------
# Run!

my_plugin=${1-kk}

mkdir tmux_${my_plugin}
cd tmux_${my_plugin}
git init

cat <<EOF >${my_plugin}.tmux
#!/usr/bin/env bash

CURRENT_DIR="\$( cd "\$( dirname "\${BASH_SOURCE[0]}" )" && pwd )"
tmux bind-key T run-shell "\$CURRENT_DIR/scripts/tmux_list_plugins.sh"
EOF

chmod u+x ${my_plugin}.tmux

mkdir scripts
cat <<EOF >scripts/tmux_list_plugins.sh
#!/usr/bin/env bash

# fetching the directory where plugins are installed
plugin_path="\$(tmux show-env -g TMUX_PLUGIN_MANAGER_PATH | cut -f2 -d=)"

# listing installed plugins
ls -1 "\$plugin_path"
EOF

chmod u+x scripts/tmux_list_plugins.sh
# ----------------------------------------------------------------------------
exit 0
