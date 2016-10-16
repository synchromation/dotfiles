## Install oh-my-zsh
export ZSH="$HOME/oh-my-zsh"; sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
## Restore existing zsh config
mv ~/.zshrc.pre-oh-my-zsh ~/.zshrc
