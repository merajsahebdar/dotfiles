fish_config theme choose "Tomorrow Night"

if status is-interactive
    # commands to run in interactive sessions can go here
end

# register local binaries and executables
set -gx PATH $HOME/.local/bin $PATH
