#installs the vim settings files into the local current user directory.

abort() {
	echo "Aborted."
	exit
}

copy() {
	echo "Installing..."
	rm -rf ~/.vim
	cp -r vim ~/.vim
	rm -rf ~/.vimrc
	cp -r vimrc ~/.vimrc
	echo "Finished."
	exit
}

echo
echo "Writing git vim config to $HOME"
echo
read -p "Continue with write? (Y/n): "
if [ -z $REPLY ]
then
	copy
else
	REPLY=$(echo $REPLY | tr '[:lower:]' '[:upper:]')
	if [ $REPLY == "Y" ]
	then
		copy
	else
		abort
	fi
fi
