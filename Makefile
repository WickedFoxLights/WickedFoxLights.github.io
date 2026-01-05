all:
	./node_modules/ghost-static-site-generator/src/index.js --url https://wickedfoxlights.github.io --domain http://ghost.wicked.fox --dest docs
	cp docs/404/index.html docs/404.html
