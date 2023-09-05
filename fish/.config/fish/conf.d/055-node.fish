if is-macos; and test -e "/opt/homebrew/opt/node@20/bin"
    set -gx PATH "/opt/homebrew/opt/node@20/bin" $PATH
end
