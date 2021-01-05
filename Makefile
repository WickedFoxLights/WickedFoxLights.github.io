all:
	gssg --url https://glenmontlights.github.io --domain http://ghost.unraid.sjhome.net --dest docs
	cp docs/404/index.html docs/404.html
