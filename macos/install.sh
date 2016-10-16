# Install AppStore apps with awesome mas CLI

echo "› Installing MAS apps"
mas install 907364780 # Pomodoro
mas install 692867256 # Simplenote
mas install 747648890 # Telegram
mas install 425424353 # Unarchiver

# The Brewfile handles Homebrew-based app and library installs, but there may
# still be updates and installables in the Mac App Store. There's a nifty
# command line interface to it that we can use to just install everything, so
# yeah, let's do that.

echo "› sudo softwareupdate -i -a"
sudo softwareupdate -i -a
