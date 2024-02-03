function node
    if not command -s node >/dev/null
        nvm use default
    end

    command node $argv
end
