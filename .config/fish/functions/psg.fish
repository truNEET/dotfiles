function psg
	command ps axu | grep -v grep | grep $argv
end
