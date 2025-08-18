chsh -s /bin/zsh

echo "Installing some stuff..."
sudo pacman -S emacs

# ruby-build pre-reqs
sudo pacman -S --needed base-devel rust libffi libyaml openssl

# Install rbenv
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
~/.rbenv/bin/rbenv init

# Emacs Prelude
curl -L https://github.com/bbatsov/prelude/raw/master/utils/installer.sh | sh

cp -r ./zsh/.* ~
cp -r ./git/.* ~

mkdir -p ~/.emacs.d/personal/
touch ~/.emacs.d/personal/whitespace.el

echo "(setq mode-require-final-newline 't)" >> ~/.emacs.d/personal/whitespace.el
echo "(add-hook 'before-save-hook 'delete-trailing-whitespace)" >> ~/.emacs.d/personal/whitespace.el
echo "(setq js-indent-level 2)" >> ~/.emacs.d/personal/whitespace.el
echo "Done"
