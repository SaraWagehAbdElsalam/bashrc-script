#!/bin/bash
BASHRC_FILE="$HOME/.bashrc"
if [ -f "$BASHRC_FILE" ]; then
	echo "Found .bashrc in the home directory."
	echo "export HELLO=\$HOSTNAME" >> "$BASHRC_FILE"
	echo "export LOCAL=\$(whoami)" >> "$BASHRC_FILE"
	gnome-terminal &
else
	echo ".bashrc file doesnot exist in the home directory."
fi

