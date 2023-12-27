#!/bin/bash

echo "$(date) - Start of the script" >> log_transformers.txt
tmux send-keys -t tfsc '6' C-m
sleep 5
tmux send-keys -t tfsc '7' C-m
tmux capture-pane -p -t tfsc | grep -E 'Version:|Base58:|Balance:|Block top:' >> log_transformers.txt
echo -e "\n\n$(date) - End of the script\n\n" >> log_transformers.txt
