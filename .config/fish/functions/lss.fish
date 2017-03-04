function lss --description "Show more detailed 'ls' output"
	command ls -l --all --human-readable --classify --color=always $argv | less -XRF
end
