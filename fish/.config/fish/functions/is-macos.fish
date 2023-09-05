function is-macos
    if string match -q "Darwin" (uname)
        return 0
    else
        return 1
    end
end
