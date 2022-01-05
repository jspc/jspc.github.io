build: dist dist/jamescondron-vpe-cv.pdf

dist:
	gitfolio build jspc -o desc -l zerointernet -r cv,seoulos,vin,linux-utils,go-lo,gin,BambiOS,sparql,goodnotes-margin,cube,goose4,tinyfib,privacy-dockerfiles,threepio -c /jamescondron-vpe-cv.pdf -i -b https://upload.wikimedia.org/wikipedia/commons/7/78/Seoul-Han.River.at.night-02.jpg -t dark -s pushed_at

dist/jamescondron-vpe-cv.pdf:
	wget $(shell curl https://api.github.com/repos/jspc/cv/releases | jq -r '.[0].assets[2].browser_download_url') -O $@
