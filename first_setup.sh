# Clean the dock

## Reset the dock
defaults delete com.apple.dock && \
defaults read com.apple.dock tilesize -int 42
killall Dock


## Removing unused Apple programs

## Pin Applications folder

# Set System Preferences
## Enable root user (NOTE: Requires user entry.)
dsenableroot

## Join the root group
sudo dseditgroup -o edit -a chelsea -t user admin

## Display full name via Fast User Switching (TODO: Check whether this works)
sudo defaults write /Library/Preferences/.GlobalPreferences MultipleSessionEnabled -bool TRUE
sudo defaults write /Library/Preferences/com.apple.loginwindow SHOWFULLNAME -bool TRUE

## Display: Scaled & more space (need to do this manually)

## Keyboard: (Note, need to log in again to take effect) adjust keyboard brightness, show keyboard & character viewers, add 2-set Korean keyboard
### Fast key repeat
defaults write NSGlobalDomain KeyRepeat -int 2

### No delay between key repeats
defaults write NSGlobalDomain InitialKeyRepeat -int 0


## Trackpad: Enable all, speed up tracking speed
## Dock: Smaller, a little magnification, automatically hide/show dock (?)
## Date & time: display the time with seconds, show date
## Open finder -> View -> Show path bar
## Show battery percentage

defaults write -g AppleShowAllExtensions -bool true # Show all file extensions
defaults write com.apple.Finder AppleShowAllFiles true # Show all files in finder
chflags nohidden ~/Library # Show User ~/Library folder
defaults write com.apple.finder QuitMenuItem -bool true # Show "Quit Finder" Menu Item
defaults write com.apple.finder ShowPathbar -bool true # Show path bar
killall Finder

# Prepare the core programs to help us set up
/usr/bin/ruby -e '$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)'
brew install wget yarn cmake libtool automake

# Build programming environment

## Workspace
git clone https://github.com/chelseavalentine/Notes ~/Workspace/Notes
git clone https://github.com/chelseavalentine/Scripts ~/Workspace/Scripts
git clone https://github.com/chelseavalentine/Problems ~/Workspace/Problems

## Portfolio
git clone https://github.com/chelseavalentine/chulc.com ~/Portfolio/chulc
git clone https://github.com/chelseavalentine/winter ~/Portfolio/winter

## Xcode
### Install command line tools without Xcode
xcode-select --install

## Add directories to favorites in Finder
## Terminal customization

## Setup Vim
brew install vim --override-system-vi

### `less`'s source highlight
brew install source-highlight

# Prepare the core files
touch ~/.bash_profile
echo 'alias sb="source ~/.bash_profile"' >> ~/.bash_profile
source ~/.bash_profile

# Upgrade and configure Git
brew install git
brew link --force git
git config --global user.name "Chelsea Valentine"
git config --global user.email cv851@nyu.edu
git config --global push.default simple
git config --global credential.helper osxkeychain

# Create a place for all of our setup downloads
rm -rf first_setup && mkdir first_setup && cd first_setup

# Install Visual Studio Code and its plugins
wget 'https://az764295.vo.msecnd.net/stable/929bacba01ef658b873545e26034d1a8067445e9/VSCode-darwin-stable.zip'
unzip VSCode-darwin-stable.zip
sudo mv 'Visual Studio Code.app' /Applications/
osascript setup_vscode_command.scpt

VSCODE_PLUGINS=(
  ### BASICS
  'formulahendry.auto-close-tag' # Auto close tags
  'steoates.autoimport' # Auto Import
  'streetsidesoftware.code-spell-checker' # Code spell-checking
  'ionutvmi.path-autocomplete' # Path autocomplete
  '2gua.rainbow-brackets' # Rainbow brackets
  'EWoodruff.VisualStudioSpellChecker' # Spell-checking
  
  ### LANGUAGES
  'idleberg.applescript' # AppleScript
  'ms-vscode.cpptools' # C/C++
  'avli.clojure' # Clojure
  'ms-vscode.csharp' # C-sharp
  'sbrink.elm' # Elm
  'xabikos.JavaScriptSnippets' # ES6 code snippets
  'dsznajder.es7-react-js-snippets' # ES7 support
  'codezombiech.gitignore' # gitignore
  'lukehoban.Go' # Go
  'ecmel.vscode-html-css' # HTML CSS Support
  'MadsKristensen.MarkdownEditor' # Markdown
  'ms-python.python' # Python
  'rebornix.Ruby' # Ruby
  'kalitaalexey.vscode-rust' # Rust
  'robinbentley.sass-indented' # SASS
  'daltonjorge.scala' # Scala
  'mrmlnc.vscode-scss' # SCSS
  
  ### THEMES
  'akamud.vscode-theme-onedark' # Atom One Dark
  'lkytal.FlatUI' # FlatUI
  'gustavo.theme-github-bold' # GitHub Bold
  'thenikso.github-plus-theme' # GitHub Plus
  'whizkydee.material-palenight-theme' # Material Palenight
  'naumovs.theme-oceanicnext' # Oceanic Next
  'azemoh.one-monokai' # One Monokai
  'ms-vscode.Theme-TomorrowKit' # Tomorrow and Tomorrow Night

  ### TOOLING
  'dbaeumer.vscode-eslint' # ESLint
  'wix.vscode-import-cost' # Import Cost
  'formulahendry.terminal' # Terminal
  'eg2.tslint' # TSLInt
  'pmneo.tsimporter' # TypeScript Importer
)

for plugin in ${VSCODE_PLUGINS[@]}
do
  code --install-extension $plugin
done

# Install JavaScript frameworks and tools
brew install watchman phantomjs
yarn install -g typescript bower ember-cli webpack jslint

# Install Python frameworks and tools
brew install python3
brew postinstall python3
sudo easy_install pip

## Python modules
sudo pip install virtualenv
pip install Django

# Google App Engine CLI
wget 'https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-180.0.1-darwin-x86_64.tar.gz'
tar -xzf ~/Downloads/google-cloud-sdk-180.0.1-darwin-x86_64.tar.gz
./google-cloud-sdk/install.sh

# Install Java-related things
brew cask install java
brew install sbt
brew install leiningen # Clojure's lein command

## Android Studio
## More APKs for Android

# Databases
brew install mongodb
brew install homebrew/versions/mysql56;mysql.server start; mysql_secure_installation
brew install redis

brew install postgres
echo 'alias pg-start="brew services start postgresql"' >> ~/.bash_profile
echo 'alias pg-stop="brew services stop postgresql"' >> ~/.bash_profile

# Install programs

## Google Chrome
wget https://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg
open googlechrome.dmg
sudo hdiutil attach googlechrome.dmg
sudo cp -a /Volumes/Google\ Chrome Chrome
sudo mv Chrome/Google\ Chrome.app /Applications/

## Enable warn before quit. Assumes that the setting is second to last in main menu.
osascript enable_chrome_warn_quit.scpt

## Firefox
wget 'https://download-installer.cdn.mozilla.net/pub/firefox/releases/57.0.1/mac/en-US/Firefox%2057.0.1.dmg'
open "Firefox 57.0.1.dmg"
sudo hdiutil attach "Firefox 57.0.1.dmg"
sudo cp -a /Volumes/Firefox Firefox
sudo mv Firefox/Firefox.app /Applications/

## Slack
wget 'https://downloads.slack-edge.com/mac_releases/Slack-2.9.0-macOS.zip'
unzip Slack-2.9.0-macOS.zip
sudo mv Slack.app /Applications/

## Skype
wget 'https://endpoint920510.azureedge.net/s4l/s4l/download/mac/Skype-8.11.0.4.dmg'
sudo hdiutil attach Skype-8.11.0.4.dmg
sudo cp -a /Volumes/Skype Skype
sudo mv Skype/Skype.app /Applications/

## Spotify
wget 'https://download.scdn.co/SpotifyInstaller.zip'
unzip SpotifyInstaller.zip
open "Install Spotify.app"

## Sublime Text 3
wget https://download.sublimetext.com/Sublime%20Text%20Build%203143.dmg
sudo hdiutil attach Sublime\ Text\ Build\ 3143.dmg
sudo cp -a /Volumes/Sublime\ Text/ Sublime
sudo mv Sublime/Sublime\ Text.app/ /Applications/

### Install Sublime Package Control and packages
osascript add_sublime_package_control.scpt

## Sketch
wget https://download.sketchapp.com/sketch-43.2-39069.zip
unzip sketch-43.2-39069.zip
sudo mv Sketch.app /Applications/

## Transmission
wget https://github.com/transmission/transmission-releases/raw/master/Transmission-2.92.dmg
open Transmission-2.92.dmg
sudo hdiutil attach Transmission-2.92.dmg
sudo cp -a /Volumes/Transmission Transmission
sudo mv Transmission/Transmission.app /Applications/

## VLC Player
wget https://ftp.osuosl.org/pub/videolan/vlc/2.2.8/macosx/vlc-2.2.8.dmg
open vlc-2.2.8.dmg
sudo hdiutil attach vlc-2.2.8.dmg
sudo cp -a /Volumes/vlc-2.2.8 VLC
sudo mv VLC/VLC.app /Applications/

## Typora
## IntelliJ
## CLion
## PyCharm
## Lingo

# Build the dock with most-used programs

# Font downloads
brew tap caskroom/fonts
brew cask install font-roboto
brew cask install font-source-sans-pro font-source-serif-pro font-source-han-code-jp font-source-han-sans

FONTS=(
  'lato'
  'noto-color-emoji'
  'noto-emoji'
  'noto-mono'
  'noto-sans'
  'open-sans'
  'open-sans-condensed'
  'pt-sans'
  'roboto'
  'roboto-condensed'
  'roboto-mono'
  'source-code-pro'
  'source-han-code-jp'
  'source-han-sans'
  'source-sans-pro'
  'source-serif-pro'
)

for font in ${FONTS[@]}
do
  brew cask install font-$font
done

## Get SF Mono fonts
cp -v /Applications/Utilities/Terminal.app/Contents/Resources/Fonts/SFMono-* ~/Library/Fonts

cd ..
sudo rm -rf first_setup
