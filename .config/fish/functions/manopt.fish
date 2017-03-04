function manopt
	if test (count $argv) -gt 1
		set -l cmd $argv[1]
		set -l opt $argv[2]
		switch $opt
			case '-*'
				# do nothing
			case '*'
				if test (string length $opt) -eq 1
					set opt '-'$opt
				else
					set opt '--'$opt
				end
		end
		command man "$cmd" | col -b | awk -v opt="$opt" -v RS= '$0 ~ "(^|,)[[:blank:]]+" opt "([[:punct:][:space:]]|$)"'
	else
		echo (basename (status -f))': [command] [option]'
	end
end
