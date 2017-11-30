# Prepare the core programs to help us set up
/usr/bin/ruby -e '$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)'
brew install yarn
brew install wget

# Prepare the core files
touch ~/.bash_profile
echo 'alias sb="source ~/.bash_profile"' >> ~/.bash_profile
source ~/.bash_profile

# Upgrade Git
brew install git
brew link --force git

# Create a place for all of our setup downloads
rm -rf first_setup && mkdir first_setup && cd first_setup

# Install Visual Studio Code
wget 'https://az764295.vo.msecnd.net/stable/929bacba01ef658b873545e26034d1a8067445e9/VSCode-darwin-stable.zip'
unzip VSCode-darwin-stable.zip
sudo mv 'Visual Studio Code.app' /Applications/

## Install VSCode plugins
code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}

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
  echo "Installed VS Plugin: $plugin"
done
