echo "Installing some stuff..."
sudo apt-get update && sudo apt-get install -y build-essential emacs zsh git curl
chsh -s /bin/zsh

# Prezto
git clone --recursive https://github.com/sorin-ionescu/prezto.git ~/.zprezto
for rcfile in ~/.zprezto/runcoms/*; do ln -s "$rcfile" "~/.${rcfile}"; done; rm ~/.README.md

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
