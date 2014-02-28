install:
	echo "Copying Files"
	cp -r emacs.d/* ~/.emacs.d
	cp -r zsh/.zshrc ~
	./install-chruby.sh
	./install-ruby-build.sh
	echo "Done"
