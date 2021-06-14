#              _        _ _       _
# (_)_ __  ___| |_ __ _| | |  ___| |__
# | | '_ \/ __| __/ _` | | | / __| '_ \
# | | | | \__ \ || (_| | | |_\__ \ | | |
# |_|_| |_|___/\__\__,_|_|_(_)___/_| |_|
#
# Tristan Fulford's easy environment installer

cd ~

mkdir ~/bin 2>/dev/null
[ ! -f ~/bin/pfetch ] && exec curl https://raw.githubusercontent.com/dylanaraps/pfetch/master/pfetch > ~/bin/pfetch

exec ln -sf ~/dots/.zshrc
exec ln -sf ~/dots/.vimrc
[ ! -d ~/.oh-my-zsh ] && sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

