echo "Installing some stuff..."
sudo apt-get update && sudo apt-get install -y build-essential emacs zsh git curl aspell
chsh -s /bin/zsh

echo "Installing Ruby dependencies"
sudo apt-get install -y gcc-6 autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm3 libgdbm-dev

# Prezto
git clone --recursive https://github.com/sorin-ionescu/prezto.git ~/.zprezto
for rcfile in ~/.zprezto/runcoms/*; do ln -s "$rcfile" "~/.${rcfile}"; done; rm ~/.README.md

# Emacs Prelude
curl -L http://git.io/epre | sh

cp -r ./zsh/.* ~
cp -r ./git/.* ~

echo "(setq mode-require-final-newline 't)" >> ~/.emacs.d/personal/whitespace.el
echo "(add-hook 'before-save-hook 'delete-trailing-whitespace)" >> ~/.emacs.d/personal/whitespace.el
echo "Done"
