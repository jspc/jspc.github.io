build: dist dist/jamescondron-sre-cv.pdf

dist:
	gitfolio build jspc -o asc -l zerointernet -r cv,seoulos,vin,linux-utils,go-lo,gin,BambiOS,routes,goodnotes-margin,sparql,cube,goose4,tinyfib,privacy-dockerfiles,threepio -c /jamescondron-sre-cv.pdf -i -b https://upload.wikimedia.org/wikipedia/commons/7/78/Seoul-Han.River.at.night-02.jpg -t dark -s last_pushed

dist/jamescondron-sre-cv.pdf:
	wget $(shell curl https://api.github.com/repos/jspc/cv/releases | jq -r '.[0].assets[1].browser_download_url') -O $@
