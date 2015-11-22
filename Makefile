 .PHONY : all basic spell


all: basic spell

basic:
	ln   -fs   `pwd`         ${HOME}/.config/nvim/
	- curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

spell:
	- wget "http://natura.di.uminho.pt/download/sources/Dictionaries/hunspell/LATEST/hunspell-pt_PT-latest.tar.gz" -O hunspell-pt_PT-latest.tar.gz
	- mkdir -p hunspell_temp
	- tar -xvzf hunspell-pt_PT-latest.tar.gz --directory=hunspell_temp
	@echo "############################################################"
	@echo "Creating pt spell file. This may take a few minutes!"
	- cd hunspell_temp/hunspell*; nvim -c "silent mkspell! pt pt_PT" -c q >&- 2>&-
	- mv hunspell_temp/hunspell-*/pt.utf-8.spl spell/pt.utf-8.spl
	rm -rf hunspell_temp hunspell-pt_PT-latest.tar.gz
	@echo "Finished creating the spell file"
