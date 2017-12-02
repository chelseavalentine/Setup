# Clean the dock

## Removing unused Apple programs

## Pin Applications folder

# Set System Preferences
## Enable root user
## Advanced optionsin Users & Groups: join the root group
## Display full name
## Display: Scaled & more space
## Keyboard: Fast key repeat, short delay until repeat, adjust keyboard brightness, show keyboard & character viewers, add 2-set Korean keyboard
## Trackpad: Enable all, speed up tracking speed
## Dock: Smaller, a little magnification, automatically hide/show dock (?)
## Date & time: display the time with seconds, show date
## Open finder -> View -> Show path bar
## Show battery percentage

## Show all files in finder
defaults write com.apple.Finder AppleShowAllFiles YES; killall Finder

# Build programming environment

## Workspace
mkdir ~/Workspace

## Portfolio
mkdir ~/Portfolio

## Add directories to favorites in Finder
## Terminal customization

## Setup Vim
brew install vim --override-system-vi

### `less`'s source highlight
brew install source-highlight

# Prepare the core programs to help us set up
/usr/bin/ruby -e '$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)'
brew install yarn
brew install wget

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
## Pip and Pip3
## Virtualenv

## Django

# Install deployment-related things
## Google App Engine CLI setup

# Install Clojure-related things

# Install Java-related things
brew cask install java

## Android Studio
## More APKs for Android

brew install sbt

# Databases
brew install mongodb
brew install homebrew/versions/mysql56;mysql.server start; mysql_secure_installation

# Install programs
## Google Chrome + enable warn before quitting (if possible)

## Firefox
wget 'https://download-installer.cdn.mozilla.net/pub/firefox/releases/57.0.1/mac/en-US/Firefox%2057.0.1.dmg'
open "Firefox 57.0.1.dmg"
sudo hdiutil attach "Firefox 57.0.1.dmg"
sudo cp -a /Volumes/Firefox Firefox
sudo mv Firefox/Firefox.app /Applications/

## Spotify
wget 'https://download.scdn.co/SpotifyInstaller.zip'
unzip SpotifyInstaller.zip
open "Install Spotify.app"

## Slack
wget 'https://downloads.slack-edge.com/mac_releases/Slack-2.9.0-macOS.zip'
unzip Slack-2.9.0-macOS.zip
sudo mv Slack.app /Applications/

## Skype
wget 'https://endpoint920510.azureedge.net/s4l/s4l/download/mac/Skype-8.11.0.4.dmg'
sudo hdiutil attach Skype-8.11.0.4.dmg
sudo cp -a /Volumes/Skype Skype
sudo mv Skype/Skype.app /Applications/

## Sublime + setup preferences + package control
## Sketch
## Typora
## IA Writer
## IntelliJ
## CLion
## PyCharm
## Lingo

# Prepare programs (if possible)
## Sync iBooks

## Can you sign into App Store via CL?

# Build the dock with most-used programs

# Font downloads
## Roboto
## Noto
