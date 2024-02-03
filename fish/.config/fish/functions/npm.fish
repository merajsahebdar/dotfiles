function npm
    if not command -s npm >/dev/null
        nvm use default
    end

    command npm $argv
end
