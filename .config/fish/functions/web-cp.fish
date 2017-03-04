function web-cp --description "Create a local copy of a website"
    wget --no-parent --wait=20 --recursive --convert-links $argv
end
