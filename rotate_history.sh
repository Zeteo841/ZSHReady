#!/bin/bash
HIST_FILE="$HOME/.zsh_history"
BACKUP_DIR="$HOME/.zsh_history_backups"

mkdir -p "$BACKUP_DIR"

if [[ $(wc -l < "$HIST_FILE") -ge 2000 ]]; then
    TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
    cp "$HIST_FILE" "$BACKUP_DIR/.zsh_history_$TIMESTAMP"
    > "$HIST_FILE"
fi
