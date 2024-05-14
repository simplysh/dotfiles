Starting tmux
```
$ tmux
```
In tmux, everything you do is preceded by the prefix key (combo starter) which is `Ctrl+b` (`<C-b>`)
Splitting the current pane vertically:
```
C-b %
```
Splitting horizontally
```
C-b "
```
Moving focus to pane
```
C-b <arrow-key>
```
Creating a new window (or tab, this has its own set of panes)
```
C-b c
```
Renaming current window
```
C-b ,
```
Go to next window
```
C-b n
```
Go to prev window
```
C-b p
```
Go to window index
```
C-b 0-9
```
Show all active windows (picker)
```
C-b w
```
To close windows/panes, simply log out of the bash shell (`C-d`). Windows dissappear when they have no more panes
Now, tmux runs its own server, so you can disconnect from a session and go back to it later. To disconnect from the current session:
```
C-b d
```
To see active sessions, in the terminal
```
$ tmux ls
```
To reconnect back to session (index)
```
$ tmux attach -t 0
```

That’s it! you now have basic working knowledge