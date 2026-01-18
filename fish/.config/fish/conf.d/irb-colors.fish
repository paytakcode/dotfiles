# IRB용 hex 색상 함수
function irb_color_hex
    set color_name $argv[1]

    # Fish 3.7+ 지원
    if set -q fish_version; and string match -r '^3\.[7-9]' $fish_version
        set hex_val (set_color --print $color_name)
        if test -n "$hex_val"
            echo $hex_val
            return
        end
    end

    # fallback: named color → hex
    switch $color_name
        case normal default;   echo "#1e1e2e"
        case black;             echo "#1e1e2e"
        case red;               echo "#f38ba8"
        case green;             echo "#a6e3a1"
        case yellow;            echo "#f9e2af"
        case blue;              echo "#89b4fa"
        case magenta;           echo "#f5c2e7"
        case cyan;              echo "#94e2d5"
        case white;             echo "#bac2de"
        case brblack;           echo "#585b70"
        case brred;             echo "#f38ba8"
        case brgreen;           echo "#a6e3a1"
        case bryellow;          echo "#f9e2af"
        case brblue;            echo "#89b4fa"
        case brmagenta;         echo "#f5c2e7"
        case brcyan;            echo "#94e2d5"
        case brwhite;           echo "#a6adc8"
        case '*';               echo "#ffffff"
    end
end

# IRB용 env export 함수
function export_irb_colors
    set -gx IRB_FG_COLOR (irb_color_hex $fish_color_cwd)
    set -gx IRB_BG_COLOR (irb_color_hex $fish_color_normal)
    set -gx IRB_SEL_FG (irb_color_hex $fish_color_normal)
    set -gx IRB_SEL_BG (irb_color_hex $fish_color_selection)
end

# fish 시작 시 한 번 초기화
export_irb_colors
