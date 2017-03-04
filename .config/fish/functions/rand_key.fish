function rand_key --description 'Generates a random hash'
	set -l c 64
	if count $argv > /dev/null
		set c $argv[1]
	end
	cat /dev/urandom | xxd -ps | head -c"$c" | sed ':a;N;$!ba;s/\n//g'; and echo
end 
