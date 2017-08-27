DIRECTORY = $(shell pwd)
install:
	ln -s $(DIRECTORY)/bashrc ~/.bashrc
	ln -s $(DIRECTORY)/profile ~/.profile
	ln -s $(DIRECTORY)/vim ~/.vim
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	vim +PluginInstall +qall
	ln -s $(DIRECTORY)/vim/vimrc ~/.vimrc

force-install:
	ln -sf $(DIRECTORY)/bashrc ~/.bashrc
	ln -sf $(DIRECTORY)/profile ~/.profile
	ln -sf $(DIRECTORY)/vim ~/.vim
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	vim +PluginInstall +qall
	ln -sf $(DIRECTORY)/vim/vimrc ~/.vimrc
