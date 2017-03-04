function make --description 'Make with all available cores'
	command make -j(expr (nproc) - 1) $argv
end
