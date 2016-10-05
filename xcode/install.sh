#!/bin/sh

function CFPreferencesAppSynchronize() {
    # custom python installations fail to find pyObjc needed to use Foundation
    /usr/bin/python - <<END
from Foundation import CFPreferencesAppSynchronize
CFPreferencesAppSynchronize('$1')
END
}

destination="$HOME/Library/Developer/Xcode/UserData/FontAndColorThemes"

if [[ ! -d $destination ]]; then
    mkdir -p ${destination}
fi

find . -name "*.dvtcolortheme" -exec cp {} ${destination} \;

defaults write com.apple.dt.Xcode.plist DVTFontAndColorCurrentTheme -string "Ciaprer 16.dvtcolortheme"
defaults write com.apple.dt.Xcode.plist XCFontAndColorCurrentTheme -string "Ciaprer 16.xccolortheme"

CFPreferencesAppSynchronize "com.apple.dt.Xcode.plist"
