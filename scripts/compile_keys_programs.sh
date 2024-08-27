#!/usr/bin/env sh

INPUT="$HOME/dotfiles/keys"
OUTPUT="$HOME/.keys"
PROGRAMS='double_quote g G h H quote'

cd "$INPUT" || exit
mkdir -p "$OUTPUT"

for PROGRAM in $PROGRAMS; do
    PROGRAM_PATH="$OUTPUT/$PROGRAM"
    cc "$PROGRAM.c" -o "$PROGRAM_PATH"
    sudo chown root "$PROGRAM_PATH"
    sudo chmod u+s "$PROGRAM_PATH"
done
