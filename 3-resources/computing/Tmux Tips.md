
`C-b [`       Enter copy mode
C-b ?       List key bindings
C-b :       Prompt for a command

# Windows

  prefix == control + b 
 `<prefix>` + c  - to create a new window
  `<prefix>` + n  - to move to the next window
  `<prefix>` + p  - to move to the previous window  


# Panes
`<prefix>` + %  - split pane vertically 
`<prefix>` + " - split pane horizontally 
`<prefix>` + (arrow key) to move among panes
`<prefix>` + z to zoom 


tmux list-keys 

bind-key    -T copy-mode    M-v                  send-keys -X page-up

cat ~/.tmux.conf
bind -T copy-mode M-p send-keys -X page-up
bind -T copy-mode M-n send-keys -X page-down

## Follow-ups


## Links: 
[[computing]]
[[Tmux]]
[[Tmux has forever changed the way I write code.]]


202408071124
