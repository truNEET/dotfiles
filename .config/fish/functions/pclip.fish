function pclip --description 'Copies the current working directory to the clipboard'
	pwd | tr -d '\n' | clip
end
