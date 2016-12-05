# Standards
Personal code style standards, setting up a laptop, and environments. I had to set up a laptop a few too many times this summer. Time to document it. This assumes you're using a Mac.

### Setup

If you can even read this, you're probably on Google Chrome already... but the first step is to of course install Google Chrome.

1. Add your `Applications` folder to the dock
1. [Install Google Chrome](https://www.google.com/chrome/) and get out of Safari
  * Enable warn before quitting
1. Log into [Spotify](https://play.spotify.com/) and turn on some music because this is going to be a long journey
2. Configure system preferences
  * [Enable root user](https://support.apple.com/en-us/HT204012)
  * Advanced optionsin Users & Groups: join the root group
  * Display full name
  * Display: Scaled & more space
  * Keyboard: Fast key repeat, short delay until repeat, adjust keyboard brightness, show keyboard & character viewers, add 2-set Korean keyboard
  * Trackpad: Enable all, speed up tracking speed
  * Dock: Smaller, a little magnification, automatically hide/show dock (?)
  * Date & time: display the time with seconds, show date
3. Install Xcode
4. [Install Sublime Text 3](https://www.sublimetext.com/3)
5. Set up [Sublime package control](https://packagecontrol.io/installation).
  * Advanced install these packages: `Agila Theme, React ES6 Snippets, Babel, Babel Snippets, HTML5, SCSS, SCSS Snippets, HTMLAttributes, GitGutter, Color Highlighter, JavaScript Completions, JavaScript Snippets, Pretty JSON, Enhanced Clojure, paredit, Theme - Spacegray, Handlebars, Auto Close HTML Tags, Dockerfile Syntax Highlighting, Protobuf Syntax Hightlighting`
6. Install [Slack](https://slack.com/downloads) and sign into your slack teams.
7. Log into [Facebook](https://www.facebook.com/), because you definitely need the distractions.
8. Install [Skype](https://www.skype.com/en/)
9. Configure your git
  * `git config --global user.name "Chelsea Valentine"`
  * `git config --global user.email cv851@nyu.edu`
  * `git config --global push.default simple`
  * Ask git to [stop asking for your login information each time](https://help.github.com/articles/caching-your-github-password-in-git/)
    - Spoiler: you probably just need to paste in `git config --global credential.helper osxkeychain`
10. Install [Sketch](https://www.sketchapp.com/) and [find the license code in your email](https://inbox.google.com/search/sketch%20license%20thank%20you%20for%20buying%20sketch)
11. Install [Homebrew](http://brew.sh/)
  * `brew install node;`
12. `cd ~/; mkdir Workspace; mkdir Portfolio; cd Workspace; git clone https://github.com/chelseavalentine/Standards.git; cd Standards; cp .bash_profile ~/.bash_profile`
13. Open Finder, View -> Show Path Bar
14. [Install JDK 8](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html), or whichever one you have to lol
15. [Install Android Studio](https://developer.android.com/studio/index.html)
  * Install more APKs (Tools -> Android -> SDK Manager)
16. [Install pip](https://pip.pypa.io/en/stable/installing/)
17. [Install Intellij](https://www.jetbrains.com/idea/download/)
18. Install [CLion](https://www.jetbrains.com/clion/), [PyCharm](https://www.jetbrains.com/pycharm/)
19. [Install Typora](https://www.macupdate.com/app/mac/52992/typora)
20. [Install Adobe Creative Cloud](https://creative.adobe.com/products/download/creative-cloud)
  * Install Photoshop, Illustrator, and Acrobat DC
21. Show all files in finder: `defaults write com.apple.Finder AppleShowAllFiles YES;killall Finder`
22. Install mongodb: `brew install mongodb`
23. Install mysql: `brew install homebrew/versions/mysql56;mysql.server start; mysql_secure_installation`
24. [Install Redis](http://redis.io/download)
25. Install webpack: `npm install -g webpack`
26. Log into [Sunrise](https://calendar.sunrise.am/) :rip:


### Settlement phase

1. [Log into tumblr](https://www.tumblr.com/login)
2. [Sign into Dramafever](https://www.dramafever.com/) (don't judge me)
3. [Sign into Viki](https://www.viki.com/)
4. [Sign into Crunchyroll](http://www.crunchyroll.com/)
5. [Download Roboto](https://www.fontsquirrel.com/fonts/roboto) and [download Noto](https://www.fontsquirrel.com/fonts/noto-sans)
6. [Sign into Amazon](https://amazon.com)
7. [Sign into Pivotal Tracker](https://www.pivotaltracker.com/signin)
8. [Download Lingo](https://www.lingoapp.com/)
9. [jshint] `npm install -g jshint`
10. [Install docker](www.docker.com)
