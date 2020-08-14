function fish_right_prompt
    set laststatus $status
    if test $laststatus -eq 0
        printf "%s✔%s%s " (set_color -o green) (set_color white) (set_color normal)
    else
        printf "%s✘%s%s " (set_color -o red) (set_color white) (set_color normal)
    end
    if test $CMD_DURATION
        # Show duration of the last command in seconds
        set duration (echo "$CMD_DURATION 1000" | awk '{printf "%.2fs", $1 / $2}')
        echo $duration
    end
end
