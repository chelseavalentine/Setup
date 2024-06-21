# Setup
A script to setup software and programming environments. I decided to create this script because I've had to set up Macbook Pros a few too many times.

## Running the script
```
git clone https://github.com/chelseavalentine/Setup
cd Setup && chmod 755 first_setup.sh && ./first_setup.sh
```


# New setup (2024)
May eventually convert this into an updated script.

1. Download Chrome
2. Download iterm https://iterm2.com/
3. Adjust System Preferences
   * Display: Scaled + Most space, night shift 24/7
   * Date & Time: Clock -> Show date & seconds
   * Dock: ~30% size, 50% magnification, automatically hide/show
   * Battery
4. Run scripts
   ```
   defaults write com.apple.dock tilesize -int 40
   defaults write com.apple.dock persistent-apps '()'
   killall Dock

   # Enable root (requires entering info)
   dsenableroot

   # Join admin group
   sudo dseditgroup -o edit -a chelsea -t user admin

   defaults write NSGlobalDomain KeyRepeat -int 2 # Fast key repeat
   defaults write NSGlobalDomain InitialKeyRepeat -int 15 # Short delay between key repeats\
   defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false # Disable smart quotes
   defaults write "com.apple.dock" autohide -int 1
   defaults write "com.apple.dock" largesize -int 75
   defaults write "com.apple.dock" magnification -int 1
   defaults write "com.apple.menuextra.battery" ShowPercent -bool true
   killall SystemUIServer

   defaults write -g AppleShowAllExtensions -bool true # Show all file extensions
   defaults write com.apple.Finder AppleShowAllFiles true # Show all files in finder
   chflags nohidden ~/Library # Show User ~/Library folder
   defaults write com.apple.finder QuitMenuItem -bool true # Show "Quit Finder" Menu Item
   defaults write com.apple.finder ShowPathbar -bool true # Show path bar
   killall Finder

   # Homebrew
   sudo xcodebuild -license
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   
   (echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/chelsea/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"

   git config --global user.name "Chelsea Valentine"
   git config --global user.email chelseafrv@gmail.com
   git config --global push.default simple
   git config --global credential.helper osxkeychain

   brew install vim
   brew install source-highlight
   brew install fish
   fish
   fish_config

   brew tap caskroom/fonts
   brew cask install font-roboto
   brew cask install font-source-sans-pro font-source-serif-pro font-source-han-code-jp font-source-han-sans
   ```
6. Import iterm profile settings & set some more custom settings in General -> Settings -> Import all settings & data.
   * Set up loading settings from a custom folder (this one) & autosave
 

### Download apps
* [Kamvas Pro 2.5k driver](https://www.huion.com/index.php?m=content&c=index&a=lists&catid=16&myform=1&down_title=Kamvas+pro+16)
 * Setup the config as follows from top to bottom: B, G, Option key, [, +, -, Space key, Undo
* [Android Studio](https://developer.android.com/studio)
* [Xcode](https://apps.apple.com/app/xcode/id497799835?mt=12)
* [Godot](https://godotengine.org/download/preview/)
* [Visual Studio Code](https://code.visualstudio.com/)
* [Tidal](https://offer.tidal.com/download)
* Aseprite (search email)
* [Sketch: Request license manager code](https://www.sketch.com/license/admin/) to be able to download the particular version
* [Krita](https://krita.org/en/download/)


### Import current projects

1. [Create a personal access token](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens#creating-a-personal-access-token-classic) for the new laptop in [Developer Settings](https://github.com/settings/tokens)

```
$ git clone https://oauth2:<token>@github.com/chelseavalentine/cocktail-lounge
$ git clone https://oauth2:<token>@github.com/chelseavalentine/game-design
$ git clone https://oauth2:<token>@github.com/chelseavalentine/orca-teddy
```

### Copy over development environment from previous laptop
* Android keystores in ~/.android and Godot Android export settings.

## Things that must be done manually

1. System Preferences
  * Display: Scaled + Most space
  * Date & Time: Clock -> Show date
2. Download and pin desired App Store apps
3. Enter license codes
  * [Sketch 3](https://inbox.google.com/search/sketch%20license%20thank%20you%20for%20buying%20sketch)

## Things I need to implement
1. Configure system preferences
  * Keyboard: Show keyboard & character viewers, add 2-set Korean keyboard
  * Trackpad: Enable all, speed up tracking speed
  * Dock: Smaller, a little magnification, automatically hide/show dock (?)
3. Install log4j

### Settlement phase

1. [Install docker](www.docker.com)
