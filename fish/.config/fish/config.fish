fish_config theme choose "Tomorrow Night"

if status is-interactive
    # commands to run in interactive sessions can go here
end

# setup homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# init starship prompt
eval "$(starship init fish)"

# add alias for creating new temporary workshop
alias mkworkshop='cd (mktemp -d /tmp/workshop.XXXXXX)'

# use exa: https://the.exa.website
if type -q exa
    alias ls='exa'
    alias la='exa -la'
end

# use neovim as default editor
if type -q nvim
    alias vim='nvim'
    set -gx EDITOR nvim
end

# register Android SDK
if test -e /opt/homebrew/share/android-commandlinetools
    set -gx ANDROID_HOME /opt/homebrew/share/android-commandlinetools
    set -gx PATH $ANDROID_HOME/emulator $PATH
    set -gx PATH $ANDROID_HOME/platform-tools $PATH
end

# register Go
if test -e "$HOME/go/bin"
    set -gx PATH "$HOME/go/bin" $PATH
end

# register VSCode
if test -e "/Applications/Visual Studio Code.app"
    set -gx PATH "/Applications/Visual Studio Code.app/Contents/Resources/app/bin" $PATH
end

# register local binaries and executables
set -gx PATH $HOME/.local/bin $PATH

# include iTerm's integration
if test -e $HOME/.iterm2_shell_integration.fish
    source $HOME/.iterm2_shell_integration.fish
end
