================================================================
             tmux how to bind a key to enter in VI
                   mode and search backwards?
================================================================
                                                              64
ANSWER
======

Running these two commands will give this mapping:
<kbd>prefix</kbd>, <kbd>/</kbd>,<kbd>/</kbd> (you'll need to hit
`/` twice.) which will put you into copy mode and then
`search-backwards`

    bind-key / copy-mode
    bind-key -t vi-copy '/' search-backward

Mapping <kbd>/</kbd> to search-backward causes you to
(obviously) lose forward search which you might want because
tmux sometimes puts the cursor at the top of the text in copy
mode (e.g. when you run `list-keys`, . But you might be able to
re-work the commands from this basic idea.

### Background

If you look in *WINDOWS AND CLIENTS* section in man page:
`man tmux | less '+/^WINDOWS'`

> Mode key bindings are defined in a set of named tables:
> vi-edit and emacs-edit for keys used when line editing at the
> command prompt; vi-choice and emacs-choice for keys used when
> choosing from lists (such as produced by the choose-window
> command); and vi-copy and emacs-copy used in copy mode.  The
> tables may be viewed with the list-keys command and keys
> modified or removed with bind-key and unbind-key.

This tells you you can list the `vi-copy` keys with

    list-keys -t vi-copy

from there you can look up which commands you want to remap.
This icon theme for Gnome provides monochromatic icons for
panels, toolbars and buttons and colourful squared icons for
devices, applications, folder, files and Gnome menu items.

An installation script let you choose the logo of your favourite
distribution and the appearance of the main menu icon
(Gnome/distrib, monochrome/colour).

Two themes are included to fit with light or dark panels.

================================================================
================================================================
================================================================
