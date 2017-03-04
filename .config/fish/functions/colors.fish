function colors
	command clear
	set phrase 'Hello World!'
	if test (count $argv) -gt 0
		set phrase $argv
	end
	while true
		printf '%s%s' (set_color (cat /dev/urandom | xxd -ps | head -c6)) $phrase
	end
end
