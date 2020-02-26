all:
	haml -f html5 index.html.haml index.html
	sass style.scss:style.css
	cd ../../../Projects/iOS/MegaMoji/
	git pull
	cd ../../../Web/amg/megamoji/
	cp ../../../Projects/iOS/MegaMoji/releasenotes.html .
	open .
	open /Applications/Cyberduck.app
	
watch:
	sass --watch style.scss:style.css