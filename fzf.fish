set -l color00 '#45475a'
set -l color01 '#f38ba8'
set -l color02 '#a6e3a1'
set -l color03 '#f9e2af'
set -l color04 '#89b4fa'
set -l color05 '#cba6f7'
set -l color06 '#94e2d5'
set -l color07 '#bac2de'
set -l color08 '#585b70'
set -l color09 '#f38ba8'
set -l color0A '#a6e3a1'
set -l color0B '#f9e2af'
set -l color0C '#89b4fa'
set -l color0D '#cba6f7'
set -l color0E '#94e2d5'
set -l color0F '#cdd6f4'

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"" --color=bg+:$color00,bg:$color00,spinner:$color0E,hl:$color0D"" --color=fg:$color07,header:$color0D,info:$color0A,pointer:$color0E"" --color=marker:$color0E,fg+:$color06,prompt:$color0A,hl+:$color0D"
