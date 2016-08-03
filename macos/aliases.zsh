# Enable aliases to be sudo'ed
alias sudo="sudo "

alias lock='/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend'

 # Open with finder
alias o="open"
alias oo="open ."

# Easier navigation
alias ..="cd .."
alias ...="cd ../.."

# CocoaPods
alias pi="pod install"

# Clean up LaunchServices to remove duplicates in the "Open With" menu
alias lscleanup="/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user && killall Finder"
alias lslist="/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -dump"

# Empty the Trash on all mounted volumes and the main HDD
# Also, clear Apple’s System Logs to improve shell startup speed
alias emptytrash="sudo rm -rfv /Volumes/\*/.Trashes; sudo rm -rfv \$HOME/.Trash/; sudo rm -rfv /private/var/log/asl/\*.asl"
alias secureemptytrash="sudo srm -rfv /Volumes/\*/.Trashes; sudo srm -rfv \$HOME/.Trash/; sudo srm -rfv /private/var/log/asl/\*.asl"

# Hide/show all desktop icons (useful when presenting)
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
