# Contains code for a new computer setup for programming

## Shorten terminal path and add git information
Copy [git-completion.bash](./git-completion.bash) and add it to home folder or another suitable place. The file [bashrc_shorten_path_git](./bashrc_shorten_path_git) assumes that the file is located in the home folder as `~/git-completion.bash`, first row must be changed if placed at another location or if named differently.

Copy [bashrc_shorten_path_git](./bashrc_shorten_path_git) and replace corresponding code similar to:
```
if [ "$color_prompt" = yes ]; then
    PS1=$PS1_custom
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt
```
