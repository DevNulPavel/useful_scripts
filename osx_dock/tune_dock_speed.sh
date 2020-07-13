#!/usr/bin/env bash

# Сайт с кучей твиков
# https://www.defaults-write.com/

# https://rixstep.com/2/20060901,00.shtml
# https://www.intego.com/mac-security-blog/unlock-the-macos-docks-hidden-secrets-in-terminal/
# http://i-yabloko.ru/howto/nastroika-dock-cheris-terminal/
# https://developer.apple.com/documentation/devicemanagement/dock
# https://osxdaily.com/2012/02/14/speed-up-misson-control-animations-mac-os-x/#:~:text=Do%20a%20three%2Dfingered%20swipe,see%20the%20difference%20in%20speed.&text=As%20you%20may%20have%20guessed,number%20the%20faster%20the%20animation.


# Increase animation speed
# defaults write com.apple.dock expose-animation-duration -float 0.12
# Delay before show
defaults write com.apple.dock autohide-delay -float 0.0
# Animation delay
defaults write com.apple.dock autohide-time-modifier -float 0.0
# Reset
killall Dock

# Remove settings
# defaults delete expose-animation-duration
# defaults delete com.apple.dock autohide-delay
# defaults delete com.apple.dock autohide-time-modifier
# defaults delete com.apple.dock
# killall Dock