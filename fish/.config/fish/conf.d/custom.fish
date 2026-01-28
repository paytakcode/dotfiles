function execute_last_command
    set idx 1

    while true
        set cmd $history[$idx]

        if test -z "$cmd"
            echo "No valid command found in history"
            return 1
        end

        # 1) !! 계열 스킵
        if string match -qr '(^|\s)(sudo\s+)?!!' -- $cmd
            set idx (math $idx + 1)
            continue
        end

        # 2) 자기 자신 스킵 (핵심!!)
        if string match -q 'execute_last_command*' -- $cmd
            set idx (math $idx + 1)
            continue
        end

        # 🔥 실행될 명령 미리 출력
        echo "+ $cmd"

        # 명령어 실행
        eval $cmd
        break
    end
end

alias vi='vim'
alias lg='lazygit'
abbr --add !! execute_last_command
fish_add_path $HOME/.local/bin
mise activate fish | source
direnv hook fish | source
