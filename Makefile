install:
	echo "Copying Files"
	cp -r emacs.d/* ~/.emacs.d
	cp -r zsh/.zshrc ~
	cp -r git/* ~
	echo "Done"
