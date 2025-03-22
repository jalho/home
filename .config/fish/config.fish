# > fish --version
# fish, version 4.0.1

function fish_prompt
    set -l last_status $status
    # Prompt status only if it's not 0
    set -l stat
    if test $last_status -ne 0
        set stat (set_color red)"[$last_status]"(set_color normal)
    end

    echo -e (string join '' -- (set_color blue) (prompt_pwd) (set_color normal) $stat)
    echo -n '$ '
end

if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting ''
