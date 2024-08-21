#!/bin/sh

install_directory="$HOME/.abe"
abe_file_path="https://raw.githubusercontent.com/andre2l2/abe/master/src/abe"

if [ -d $install_directory ]
then
  echo "Directory .abe is created!"
else
  mkdir "$install_directory"
fi

cp $abe_file_path $install_directory
chmod +x "$install_directory/abe"

echo "" >> "$HOME/.zshrc"
echo "export PATH="$PATH:$install_directory"" >> "$HOME/.zshrc"

echo "Abe installed!"