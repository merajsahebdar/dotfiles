function refix-dependency-php
    set DEPENDENCY_PATH (brew --prefix "php@$argv[1]")
    set -gx PATH "$DEPENDENCY_PATH/bin" $PATH
    set -gx PATH "$DEPENDENCY_PATH/sbin" $PATH
    set -gx MANPATH "$DEPENDENCY_PATH/share/man" $MANPATH
end
