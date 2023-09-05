if is-macos; and test -e "/Applications/Visual Studio Code.app"
    set -gx PATH "/Applications/Visual Studio Code.app/Contents/Resources/app/bin" $PATH
end
