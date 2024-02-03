function nvm
    if not is-macos
        echo "Currently only macOS support has been implemented"

        return 1
    end

    set -l NVM_PREFIX /opt/homebrew/opt/nvm

    if not test -e "$NVM_PREFIX/nvm.sh"
        echo "It seems the original nvm is not installed"

        return 1
    end

    foreign-env source "$NVM_PREFIX/nvm.sh" --no-use ';' nvm $argv
end
