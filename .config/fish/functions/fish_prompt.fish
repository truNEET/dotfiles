#function fish_prompt --description 'Write out the prompt'
#	if test -z $WINDOW
#   printf '%s%s@%s %s%s%s%s $ ' (set_color --bold green) (whoami) (hostname|cut -d . -f 1) (set_color purple) (prompt_pwd) (set_color normal)
# else
#   printf '%s%s@%s%s%s(%s)%s%s%s> ' (set_color yellow) (whoami) (set_color purple) (hostname|cut -d . -f 1) (set_color white) (echo $WINDOW) (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
# end
#end

function fish_prompt --description 'Write out the prompt'

	if not set -q __git_cb
		set __git_cb ":"(set_color ff2929)(git branch ^/dev/null | grep \* | sed 's/* //')""
	end

	printf '%s%s@%s %s%s%s %s%s$ ' (set_color --bold green) (whoami) (hostname|cut -d . -f 1) (set_color purple) (prompt_pwd) (printf '%s' $__git_cb) (set_color normal)
end

#printf '%s%s' (set_color ff2/%929) 'Hello!'
