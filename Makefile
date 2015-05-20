install:
	echo "Installing some stuff..."
	sudo apt-get install -y build-essential emacs zsh git
	sudo chsh -s /bin/zsh

	# Prezto
	git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
	setopt EXTENDED_GLOB
	for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"; done

	# Emacs Prelude
	curl -L http://git.io/epre | sh

	echo "Copying Files"
	cp -r zsh/.zshrc ~
	cp -r zsh/.zpreztorc ~
	cp -r git/.gitconfig ~
	cp -r git/.gitignore ~
	mkdir -p ~/.lein
	cp -r lein/* ~/.lein
	echo "(setq mode-require-final-newline nil)" >> ~/.emacs.d/personal/preload/whitespace.el
	echo "(add-hook 'before-save-hook 'delete-trailing-whitespace)" >> ~/.emacs.d/personal/preload/whitespace.el
	echo "Done"
