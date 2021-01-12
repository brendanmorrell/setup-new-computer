#!/usr/bin/env bash

# Link dot files
# `pwd`/autolink.sh

# Install xcode command line tools and wait for it to complete, necessary for other components
xcode-select --install &
INTSTALL_PID="$!"
wait $INSTALL_PID

# Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install brew packages
brew install git
brew install hub
brew install node
brew install yarn

# (possibly) install useful global npm libraries. may just be better to always use npx
# npm i -g localtunnel
# npm i -g nodemon
# npm i -g serve
# npm i -g create-react-app
# npm i -g eslint

# install applications through brew
# brew install --cask alfred
# brew install --cask slack
# brew install --cask google-chrome
# brew install --cask postman
brew install --cask iterm2
brew install --cask appcleaner
brew install --cask docker
brew install --cask bettertouchtool
brew install --cask lastpass
brew install --cask vlc
brew install --cask android-messages
brew install --cask superduper
brew install --cask graphiql
brew install --cask numi
brew install --cask spotify

# Should test these on machine with admin to see if the brew cask installs are enough. might not need these steps
# install copy clip 2 and register it using this key:
# brendanmorrell@gmail.com, F1A0E820-99A05040-186ED6EB-9C92DAD0-C78AB025

# install better touch tool and install it using this url:
# https://folivora.ai/retrievelicense/?id=68128247-chre8adbe9984c0-f7955cf762&email=brendanmorrell%40gmail.com


# Install vscode fonts and theme
brew tap homebrew/cask-fonts
brew install --cask font-fira-code

# Install NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash

# Configure dock
defaults write com.apple.dock autohide -bool TRUE
# not positive this works
defaults write com.apple.dock mru-spaces -bool false
# show hidden files and folders
defaults write com.apple.Finder AppleShowAllFiles -bool true
killall FInder
killall Dock
# defaults write com.apple.dock tilesize -float 16
defaults write com.apple.finder QLEnableTextSelection -bool TRUE
defaults write com.apple.finder AppleShowAllFiles -bool TRUE

# Set mac theme to dark mode
osascript -e 'tell app "System Events" to tell appearance preferences to set dark mode to not dark mode'

# Install Oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#Install Powerline Them. After this step, boot up iterm and follow promptse
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
# add ZSH_THEME="powerlevel10k/powerlevel10k" to zshrc
# can try the line below. not sure if this adds it automatically
# echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>! ~/.zshrc

# add Z to plugins section of .zshrc and download file
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# install xcode
xcode-select --install

# Create Workspace Directories
mkdir "$HOME/Desktop/code"



exit 0




# TODO
# preferences -> keyboard -> key repeat and delay until repeat both at fastest
# preferences -> accessibility -> control key zoom modifier true


# SSH for github
# ssh-keygen -t ed25519 -C "my-new-computer"
# pbcopy < ~/.ssh/id_ed25519.pub

# add code to pathname (CMD shift P -> install code command in path)

# add vscode icon to top of finder windows for drag and drop (hold down CMD + OPTION and drag vscode to top of finder top bar)

# sync vscode settings (Cmd shit P, settings ync, sign in to github and choose most recent)

# change option modifier key to escape for terminal word navigation
# iterm -> profiles -> keys -> left option key as Esc+

# set iterm to have a hotkey keys-> create a dedicated hotkey window ->option + /, uncheck animate showing/hiding. d

# disable highlighting active terminal
osascript -e 'tell application "iTerm"
    repeat with aWindow in windows
        tell aWindow
            tell current session
                set transparency to 0
            end tell
        end tell
    end repeat
end tell'




# MEDMEN
# globalprotect.medmen.com
# download outlook
# download clockify
