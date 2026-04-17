# Ghostty can send CSI 1;4D for Shift-Alt-Left. Map it to the same widget as
# Alt-Left so the extra modifier does not end up inserted as literal text.
bindkey '\e[1;4D' backward-word

# Some terminals emit the shorter CSI ;4D form for the same chord.
bindkey '\e[;4D' backward-word

# Ghostty can send the matching right-arrow forms for Shift-Alt-Right.
bindkey '\e[1;4C' forward-word
bindkey '\e[;4C' forward-word

# Assume Ghostty encodes Command as Super here, so Shift-Cmd-Left/Right map to
# the same widgets as Cmd-Left/Right without inserting escape text.
bindkey '\e[1;10D' beginning-of-line
bindkey '\e[;10D' beginning-of-line
bindkey '\e[1;10C' end-of-line
bindkey '\e[;10C' end-of-line
