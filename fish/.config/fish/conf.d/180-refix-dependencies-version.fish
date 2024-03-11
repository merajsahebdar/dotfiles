function refix-dependencies-version --on-variable PWD --on-event fish_greeting
    set VERSIONRC "$PWD/.localversionrc"

    if test -f $VERSIONRC
        for line in (cat $VERSIONRC)
            if string match -rq '.*@[0-9]+\.[0-9]+.*' -- $line
                set PARSED_DEPENDENCY (string split "@" -- $line)
                set REFIX_DEPENDENCY $PARSED_DEPENDENCY[1]
                set REFIX_VERSION $PARSED_DEPENDENCY[2]
                set REFIX_FIXER "refix-dependency-$REFIX_DEPENDENCY"

                if contains -- $REFIX_FIXER (functions)
                    eval $REFIX_FIXER "'$REFIX_VERSION'"
                end
            end
        end
    end
end
