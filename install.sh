chsh -s /usr/bin/zsh

echo "Installing some stuff..."
sudo pacman -S neovim

# ruby-build pre-reqs
sudo pacman -S --needed base-devel rust libffi libyaml openssl

# Install rbenv
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
~/.rbenv/bin/rbenv init

# LazyVim
git clone http://github.com/LazyVim/starter ~/.config/nvim
