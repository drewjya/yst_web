start:
	npm run build
	pm2 start .output/server/index.mjs --name "yst_web" --watch
restart:
	npm run build
	pm2 restart .output/server/index.mjs --name "yst_web" --watch
save:
	pm2 save