bootstrap:
	echo "Copying Files"
	cp -r /emacs.d/* ~/.emacs.d
	cp -r /zsh/* ~

	echo "Setting up Rinari"
	cd ~/.emacs.d/
	git clone git://github.com/eschulte/rinari.git
	cd rinari
	git submodule init
	git submodule update

	echo "Dotfiles setup!"
