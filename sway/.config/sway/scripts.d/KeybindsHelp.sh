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
CONTENT="<span face='monospace' foreground='$Yellow'><b><span foreground='$Red'>Keybinds Helps</span></b>

<b><span foreground='$Orange'>Manjaro Sway Keybinds</span></b>
<small><span foreground='$Green'>Mod  +  Shift  +  e    </span> = Shutdown Mode 
<span foreground='$Green'>Mod  +  Shift  +  c    </span> = Sway Reload 
<span foreground='$Green'>Mod  +  Shift  +  q    </span> = Kill (Apps) 󰯆
<span foreground='$Green'>Mod  +  Shift  +  b    </span> = Hide/Unhide Waybar 󰈉
<span foreground='$Green'>Mod  +  Return         </span> = Terminal Foo 
<span foreground='$Green'>Mod  +  d              </span> = Menu (*Wofi) 󰀻
<span foreground='$Green'>Ctrl +  Alt    +  Del  </span> = Task Manager 
<span foreground='$Green'>Mod  +  Shift  +  i    </span> = Inhibit-Idle 󰒳
<span foreground='$Green'>Mod  +  r              </span> = Resize Mode 󰲏
<span foreground='$Green'>Mod  +  Shift  +  p    </span> = Clipboard 
<span foreground='$Green'>Mod  +  ← ↑ → ↓        </span> = Focus 󰼀
<span foreground='$Green'>Mod  +  1 > 9          </span> = Select Workspace </small>

<b><span foreground='$Orange'>User Keybinds</span></b>
<small><span foreground='$Green'>Ctrl +  Shift  +  h    </span> = Keybinds Help 󰞋
<span foreground='$Green'>Mod  +  Ctrl   +  p    </span> = PowerMenu Mode 
<span foreground='$Green'>Ctrl +  Return         </span> = Kitty Terminal 
<span foreground='$Green'>Ctrl +  Shift  +  b    </span> = Brave Browser 󰖟
<span foreground='$Green'>Ctrl +  Shift  +  f    </span> = Firefox Browser 󰈹
<span foreground='$Green'>Mod  +  Ctrl   +  f    </span> = Yazi File Manager 󰇥
<span foreground='$Green'>Ctrl +  Shift  +  t    </span> = Thunar File Manager 
<span foreground='$Green'>Ctrl +  Shift  +  m    </span> = Mousepad Editor 󱩼</small>

<b><span foreground='$Red'>󱞩 Keep It Simple Stupid 󱞥</span></b></span>
"

# Run
keyhelp=$(yad --title="Keybinds Help" --text="$CONTENT" --borders=10 --no-buttons --close-on-unfocus)

swaymsg exec '$keyhelp'
