#!/usr/bin/env bash

DIR_PATH="$HOME/.local/bin"
DOWNLOAD_URL="https://github.com/Esteban528/grompt/releases/download/oficial/grompt_static"
PROGRAM="grompt"

if [[ ! -d "$DIR_PATH" ]]; then
  echo "your shell is not taking local binaries"
  exit 1
fi

if [[ "$1" == "--light" ]]; then
  DOWNLOAD_URL="https://github.com/Esteban528/grompt/releases/download/oficial/grompt_light"
fi

rm "$DIR_PATH/$PROGRAM"

curl -L -o "$DIR_PATH/$PROGRAM" "$DOWNLOAD_URL"
chmod +x "$DIR_PATH/$PROGRAM"

echo "'$PROGRAM' sucessfull installed in $DIR_PATH"
