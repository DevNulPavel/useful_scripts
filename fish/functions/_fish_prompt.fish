function fish_prompt
    set -l DIESCOLOR (set_color 8040AA)
    set -l GREEN (set_color 00FF00)
    set -l DARKGREEN (set_color 00AA00)
    set -l CYAN (set_color 57FFF2)
    set -l BLUE (set_color 8080FF)
    set -l RED (set_color FF2020)
    set -l DARKRED (set_color 800000)
    set -l YELLOW (set_color FFFF00)
    set -l ORANGE (set_color AA8016)
    set -l WHITE (set_color FFFFFF)
    set -l GRAY (set_color 808080)
    set -l MAGENTA (set_color FFF090)
    set -l NORMAL (set_color normal)
    set -l START "("
    set -l END ")"

    set -l DIES "#"
    for x in (seq 30)
        set DIES $DIES"#"
    end

    echo "$DIESCOLOR""$DIES"\n"$DARKGREEN"'{'(hostname -s)'}'"$WHITE": "$CYAN"$USER "$YELLOW"in "$ORANGE"'['"$GREEN"(pwd)"$ORANGE"']'\n''"$RED"'-> '"$NORMAL"
end
