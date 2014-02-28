install:
	echo "Copying Files"
	cp -r emacs.d/* ~/.emacs.d
	cp -r zsh/.zshrc ~
	./install-chruby.sh
	./install-ruby-build.sh
	curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
	echo "Done"
