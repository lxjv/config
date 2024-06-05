function jj
    just $(just --summary | tr ' ' '\n' | sort | fzf)
end
