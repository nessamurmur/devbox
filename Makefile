bootstrap:
	@echo "Copying Files"
	cp -r linux/emacs.d/* ~/.emacs.d
	cp linux/vim/.vimrc ~
	cp linux/zsh/.zshrc ~
