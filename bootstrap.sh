#!/usr/bin/env sh
#
# Emacs Wrapper
# 
# Executing this script from any directory will launch Emacs using this directory as 
# the new ~/emacs.d
#

# Absolute path to this script. /home/user/bin/foo.sh
SCRIPT_DIR=$(dirname "$(readlink "$0" || echo "$(echo "$0" | sed -e 's,\\,/,g')")")
export EMACS_INIT_FILE=$SCRIPT_DIR/init.el

emacs -q -l $EMACS_INIT_FILE $@
