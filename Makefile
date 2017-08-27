DIRECTORY = $(shell pwd)
install:
	ln -s $(DIRECTORY)/bashrc ~/.bashrc
	ln -s $(DIRECTORY)/profile ~/.profile
	ln -s $(DIRECTORY)/vim ~/.vim
	ln -s $(DIRECTORY)/vim/vimrc ~/.vimrc

force-install:
	ln -sf $(DIRECTORY)/bashrc ~/.bashrc
	ln -sf $(DIRECTORY)/profile ~/.profile
	ln -sf $(DIRECTORY)/vim ~/.vim
	ln -sf $(DIRECTORY)/vim/vimrc ~/.vimrc
