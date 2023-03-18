update-packwiz:
	go install github.com/packwiz/packwiz@latest
	go install github.com/Merith-TK/packwiz-wrapper/cmd/pw@latest
	clear
	@echo "Packwiz has been Updated"
export:
	pw -b -d versions mr export
update:
	pw -b -d versions update --all
refresh:
	pw -b -d versions refresh
compile:
	make update-packwiz
	make refresh
	make update
	make export