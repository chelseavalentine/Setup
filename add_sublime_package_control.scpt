tell application "Sublime Text"
	activate
	tell application "System Events"
		key code 50 using control down
		delay 1
		keystroke "import urllib.request,os,hashlib; h = '6f4c264a24d933ce70df5dedcf1dcaee' + 'ebe013ee18cced0ef93d5f746d80ef60'; pf = 'Package Control.sublime-package'; ipp = sublime.installed_packages_path(); urllib.request.install_opener( urllib.request.build_opener( urllib.request.ProxyHandler()) ); by = urllib.request.urlopen( 'http://packagecontrol.io/' + pf.replace(' ', '%20')).read(); dh = hashlib.sha256(by).hexdigest(); print('Error validating download (got %s instead of %s), please try manual install' % (dh, h)) if dh != h else open(os.path.join( ipp, pf), 'wb' ).write(by)"
		delay 1
		keystroke return
		delay 5
		set PACKAGES to {"Agila Theme", "React ES6 Snippets", "Babel", "Babel Snippets", "HTML5", "SCSS", "SCSS Snippets", "HTMLAttributes", "GitGutter", "Color Highlighter", "JavaScript Completions", "JavaScript Snippets", "Pretty JSON", "Enhanced Clojure", "paredit", "Theme - Spacegray", "Handlebars", "Auto Close HTML Tags", "Dockerfile Syntax Highlighting", "Protobuf Syntax Hightlighting", "ES6-Toolkit", "Baobab React ES6 Snippets"}
		repeat with i from 1 to number of items in PACKAGES
			keystroke "p" using {command down, shift down}
			delay 1
			keystroke "install package"
			delay 1
			keystroke return
			delay 1
			keystroke (item i of PACKAGES)
			delay 1
			keystroke return
		end repeat
		delay 10
	end tell
	quit	
end tell
