#!/bin/bash

# Title       : My preferred Python dev. extensions
# Author 	  : Isaac PM @ https://github.com/Isaac-PM
# Last update : 05/02/2023

# Miscellaneous functions

msg() {
  echo >&2 -e "${1-}"
}

# Enable / Disable extensions

read -p "Type 'E' for enabling the Python extensions, 'D' for disabling [E/D] : " answer_ed

if [[ $answer_ed = E ]]; then
	msg "\nEnabling extensions...\n"
	code --install-extension ms-python.python
    code --install-extension ms-python.vscode-pylance
    code --install-extension ms-toolsai.jupyter
    code --install-extension njpwerner.autodocstring
    code --install-extension ms-pyright.pyright
	code --install-extension formulahendry.code-runner
    code --install-extension oderwat.indent-rainbow
    code --install-extension esbenp.prettier-vscode
fi

if [[ $answer_ed = D ]]; then
	msg "\nDisabling extensions...\n"
	code --unistall-extension ms-python.python
    code --unistall-extension ms-python.vscode-pylance
    code --unistall-extension ms-toolsai.jupyter
    code --unistall-extension njpwerner.autodocstring
    code --unistall-extension ms-pyright.pyright
	code --unistall-extension formulahendry.code-runner
    code --unistall-extension oderwat.indent-rainbow
    code --unistall-extension esbenp.prettier-vscode
fi