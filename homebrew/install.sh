#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew)
then
  echo "Installing Homebrew for you."

  # Install the correct homebrew for each OS type
  if test "$(uname)" = "Darwin"
  then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  elif test "$(expr substr $(uname -s) 1 5)" = "Linux"
  then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/linuxbrew/go/install)"
  fi
  
fi

# Make sure we’re using the latest Homebrew.
echo "Updating homebrew."
brew update

# Upgrade any already-installed formulae.
echo "Upgrading homebrew packages."
brew upgrade --all

# Install homebrew packages
echo "Installing packages."
brew install cask chisel jq hub mergepbx swiftlint

echo "Installing cask apps."
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

APPS=(
    todoist spectacle vlc viber spotify slack skype iterm2 appcleaner dropbox rescuetime
    google-photos-backup daisydisk charles telegram ynab flux clipmenu anki nvalt atom
    )
for app in ${APPS[@]}; do
    brew cask install $app
done
     
#QuickLook plugins

QLPLUGINS=(qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook provisionql)

for plugin in ${QLPLUGINS[@]}; do
    brew cask install $plugin
done

qlmanage -r

#Cleanup old versions

echo "Cleaning up..."
brew cleanup
brew cask cleanup

echo "Done."
exit 0
