#updates the repository with the local copy of vim configuration files

rm -rf vim
cp -r ~/.vim vim
rm -rf vimrc
cp -r ~/.vimrc vimrc
