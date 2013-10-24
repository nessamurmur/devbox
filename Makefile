setup_mac: 
	@echo "Copying cofig files"
	cp -r mac/emacs.d/* ~/.emacs.d
	cp mac/vim/.vimrc ~
	cp mac/zsh/.zshrc ~

setup_linux:
	@echo "Copying Files"
	cp -r linux/emacs.d/* ~/.emacs.d
	cp linux/vim/.vimrc ~
	cp linux/zsh/.zshrc ~
