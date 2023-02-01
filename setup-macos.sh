# System Preferences > General > Appearance
defaults write -globalDomain AppleInterfaceStyleSwitchesAutomatically -bool false

# System Preferences > General > Click in the scrollbar to: Jump to the spot that's clicked
defaults write -globalDomain AppleScrollerPagingBehavior -bool true

# System Preferences > General > Sidebar icon size: Medium
defaults write -globalDomain NSTableViewDefaultSizeMode -int 2

# General settings, disable font smoothing
defaults -currentHost write -g AppleFontSmoothing -int 0

#----------------------------------------------------------------------------

# System Preferences > Desktop & Screen Saver > Start after: Never
defaults -currentHost write com.apple.screensaver idleTime -int 0

#----------------------------------------------------------------------------

# System Preferences > Dock > Size:
defaults write com.apple.dock tilesize -int 36

# System Preferences > Dock > Position:
defaults write com.apple.dock orientation left

# System Preferences > Dock > Magnification:
defaults write com.apple.dock magnification -bool false

# System Preferences > Dock > Size (magnified):
defaults write com.apple.dock largesize -int 54

# System Preferences > Dock > Minimize windows using: Scale effect
defaults write com.apple.dock mineffect -string "scale"

# System Preferences > Dock > Minimize windows into application icon
defaults write com.apple.dock minimize-to-application -bool true

# System Preferences > Dock > Automatically hide and show the Dock:
defaults write com.apple.dock autohide -bool true

# System Preferences > Dock > Automatically hide and show the Dock (duration)
defaults write com.apple.dock autohide-time-modifier -float 0.5

# System Preferences > Dock > Automatically hide and show the Dock (delay)
defaults write com.apple.dock autohide-delay -float 0

# System Preferences > Dock > Show indicators for open applications
defaults write com.apple.dock show-process-indicators -bool true

# System Preferences > Dock > Show recent applications in Dock
defaults write com.apple.dock show-recents -bool false

#----------------------------------------------------------------------------

defaults write com.apple.swipescrolldirection -bool false;

#----------------------------------------------------------------------------

# System Preferences > Mission Control > Automatically rearrange Spaces based on most recent use
defaults write com.apple.dock mru-spaces -bool false

# System Preferences > Mission Control > Dashboard
defaults write com.apple.dock dashboard-in-overlay -bool true

#----------------------------------------------------------------------------

# System Preferences > Keyboard
# defaults write NSGlobalDomain KeyRepeat -int 2

# System Preferences > Keyboard
# defaults write NSGlobalDomain InitialKeyRepeat -int 15

#----------------------------------------------------------------------------

# Finder > Preferences > Show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Finder > Preferences > Show hidden files
defaults write com.apple.finder AppleShowAllFiles true

# Finder > Preferences > Show warning before changing an extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Finder > View > As List
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

# Finder > View > Show Path Bar
defaults write com.apple.finder ShowPathbar -bool true

#----------------------------------------------------------------------------
# VSCode > Correct press and hold behaviour for vim
# defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false

#----------------------------------------------------------------------------

# Kill affected apps
for app in "Dock" "Finder"; do
  killall "${app}" > /dev/null 2>&1
done

echo "MacOS setup complete."
