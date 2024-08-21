#!/bin/sh

install_directory="$HOME/.abe"
abe_file_path="https://raw.githubusercontent.com/andre2l2/abe/master/src/abe"

if [ -d $install_directory ]
then
  echo "Abe is installed!"
else
  mkdir "$install_directory"

  curl $abe_file_path > "$install_directory/abe"
  chmod +x "$install_directory/abe"

  echo "" >> "$HOME/.zshrc"
  echo "export PATH="$PATH:$install_directory"" >> "$HOME/.zshrc"

  echo "Abe installed!"
fi