#!/bin/bash

# Dracula color scheme:
Cyan="#8BE9FD" #(a bright blue-green color)
Green="#50FA7B" #(a bright green color)
Orange="#FFB86C" #(a bright orange color)
Pink="#FF79C6" #(a bright pink color)
Purple="#BD93F9" #(a bright purple color)
Red="#FF5555" #(a bright red color)
Yellow="#F1FA8C" #(a bright yellow color)

##################################################
# Find "bindsym" on /etc/sway/ and $HOME/.config/sway/
# KEYBINDS=$(grep -rh "bindsym" /etc/sway/ $HOME/.config/sway/ | sed 's/bindsym/<b><span foreground=\"red\">&<\/span><\/b>/g')

# Add keybinds
#CONTENT="$CONTENT
#<b><big>Keybinds de Sway:</big></b>
#$KEYBINDS"
##################################################

# My keybinds
CONTENT="<span face='monospace' foreground='$Yellow'> 
<big><b><span foreground='$Orange'>My Keybinds Helps</span></b></big>

<b><span foreground='$Purple'>Manjaro Sway Keybinds</span></b>
<b><span foreground='$Green'>Mod  +  Shift  +  e    </span>= Shutdown Mode </b>
<b><span foreground='$Green'>Mod  +  Shift  +  c    </span>= Sway Reload </b>
<b><span foreground='$Green'>Mod  +  Shift  +  q    </span>= Kill (Apps) 󰯆</b>
<b><span foreground='$Green'>Mod  +  Shift  +  b    </span>= Hide/Unhide Waybar 󰈉</b>
<b><span foreground='$Green'>Mod  +  Return         </span>= Terminal Foo </b>
<b><span foreground='$Green'>Mod  +  d              </span>= Menu (*Wofi) 󰀻</b>
<b><span foreground='$Green'>Ctrl +  Alt    +  Del  </span>= Task Manager </b>
<b><span foreground='$Green'>Mod  +  Shift  +  i    </span>= Inhibit-Idle Interactive 󰒳</b>
<b><span foreground='$Green'>Mod  +  r              </span>= Resize Mode 󰲏</b>
<b><span foreground='$Green'>Mod  +  Shift  +  p    </span>= Clipboard </b>
<b><span foreground='$Green'>Mod  +  ← ↑ → ↓        </span>= Focus 󰼀</b>
<b><span foreground='$Green'>Mod  +  1 > 9          </span>= Select Workspace </b>

<b><span foreground='$Purple'>My Keybinds</span></b>
<b><span foreground='$Green'>Ctrl +  Shift  +  h    </span>= Keybinds Help 󰞋</b>
<b><span foreground='$Green'>Mod  +  Ctrl   +  p    </span>= PowerMenu Mode </b>
<b><span foreground='$Green'>Ctrl +  Return         </span>= Kitty Terminal </b>
<b><span foreground='$Green'>Ctrl +  Shift  +  b    </span>= Brave Browser 󰖟</b>
<b><span foreground='$Green'>Ctrl +  Shift  +  f    </span>= Firefox Browser 󰈹</b>
<b><span foreground='$Green'>Ctrl +  Alt    +  f    </span>= Yazi File Manager 󰇥</b>
<b><span foreground='$Green'>Ctrl +  Shift  +  t    </span>= Thunar File Manager </b>
<b><span foreground='$Green'>Ctrl +  Shift  +  m    </span>= Mousepad Editor 󱩼</b>

<big><b><span foreground='$Red'>󱞩 Keep It Simple Stupid 󱞥</span></b></big>
</span>
"

# Run
keyhelp=$(yad --title="Keybinds Help" --text="$CONTENT" --no-buttons --close-on-unfocus)

swaymsg exec '$keyhelp' 