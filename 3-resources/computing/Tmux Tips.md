
`C-b [`       Enter copy mode

C-b ?       List key bindings

C-b :       Prompt for a command

tmux list-keys 

bind-key    -T copy-mode    M-v                  send-keys -X page-up

cat ~/.tmux.conf
bind -T copy-mode M-p send-keys -X page-up
bind -T copy-mode M-n send-keys -X page-down

## Follow-ups


## Links: 



202408071124
