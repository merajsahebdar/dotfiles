# foreign-env is derived from https://github.com/oh-my-fish/plugin-foreign-env,
# which is licensed under the MIT License.
# Copyright (c) 2015 Derek Willian Stavis

function foreign-env
    if test (count $argv) -eq 0
        echo "foreign-env: Missing argument"

        return 23
    end

    bash -c "$argv && env -0 >&31" 31>| while read -l -z env_var
        set -l kv (string split -m 1 = $env_var); or continue

        # Skip read-only variables
        contains $kv[1] _ SHLVL PWD; and continue
        string match -rq '^BASH_.*%%$' $kv[1]; and continue

        # Variable
        # - is not defined
        # - OR variable differs
        # - OR variable is not exported
        if not set -q $kv[1]; or test "$$kv[1]" != $kv[2]; or not set -qx $kv[1]
            set -gx $kv
        end
    end

    return $pipestatus[1]
end
