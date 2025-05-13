all:
	haml render index.html.haml > index.html
	sass style.scss:style.css
	git -C ~/Developer/MegaMoji/ pull
	cp ~/Developer/MegaMoji/releasenotes.html .
	cp ~/Developer/MegaMoji/releasenotes.json .
	open .
	open /Applications/Cyberduck.app

watch:
	sass --watch style.scss:style.css
