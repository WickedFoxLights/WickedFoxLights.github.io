all:
	gssg --url https://wickedfoxlights.github.io --domain http://ghost.wicked.fox --dest docs
	cp docs/404/index.html docs/404.html
