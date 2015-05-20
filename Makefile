install:
	echo "Installing some stuff..."
	sudo apt-get install -y build-essential emacs zsh
	sudo chsh -s /bin/zsh

	echo "Copying Files"
	cp -r zsh/.zshrc ~
	cp -r zsh/.zpreztorc ~
	cp -r git/.gitconfig ~
	cp -r git/.gitignore ~
	mkdir -p ~/.lein
	cp -r lein/* ~/.lein
	echo "Done"
