provide-module terminal-mode %{

  # Terminal
  declare-user-mode terminal

  # Set the terminal
  # terminal-set <scope> <module> <terminal> <focus>
  define-command terminal-set -params 4 -docstring 'terminal-set <scope> <module> <terminal> <focus>: Set the terminal' %{
    require-module %arg{2}
    alias %arg{1} terminal %arg{3}
    alias %arg{1} focus %arg{4}
  }

  # iTerm – https://iterm2.com
  # https://github.com/mawww/kakoune/blob/master/rc/windowing/iterm.kak
  declare-user-mode iterm
  map global terminal i ': enter-user-mode iterm<ret>' -docstring 'iTerm'
  map global iterm h ': terminal-set global iterm iterm-terminal-horizontal iterm-focus<ret>' -docstring 'Horizontal'
  map global iterm t ': terminal-set global iterm iterm-terminal-tab iterm-focus<ret>' -docstring 'Tab'
  map global iterm v ': terminal-set global iterm iterm-terminal-vertical iterm-focus<ret>' -docstring 'Vertical'
  map global iterm w ': terminal-set global iterm iterm-terminal-window iterm-focus<ret>' -docstring 'Window'

  # kitty – https://sw.kovidgoyal.net/kitty/
  # https://github.com/mawww/kakoune/blob/master/rc/windowing/kitty.kak
  declare-user-mode kitty
  map global terminal k ': enter-user-mode kitty<ret>' -docstring 'kitty'
  map global kitty t ': terminal-set global kitty kitty-terminal-tab kitty-focus<ret>' -docstring 'Tab'
  map global kitty w ': terminal-set global kitty kitty-terminal kitty-focus<ret>' -docstring 'Window'

  # Screen – https://gnu.org/software/screen/
  # https://github.com/mawww/kakoune/blob/master/rc/windowing/screen.kak
  declare-user-mode screen
  map global terminal s ': enter-user-mode screen<ret>' -docstring 'Screen'
  map global screen h ': terminal-set global screen screen-terminal-horizontal screen-focus<ret>' -docstring 'Horizontal'
  map global screen v ': terminal-set global screen screen-terminal-vertical screen-focus<ret>' -docstring 'Vertical'
  map global screen w ': terminal-set global screen screen-terminal-window screen-focus<ret>' -docstring 'Window'

  # tmux – https://github.com/tmux/tmux
  # https://github.com/mawww/kakoune/blob/master/rc/windowing/tmux.kak
  declare-user-mode tmux
  map global terminal t ': enter-user-mode tmux<ret>' -docstring 'tmux'
  map global tmux h ': terminal-set global tmux tmux-terminal-horizontal tmux-focus<ret>' -docstring 'Horizontal'
  map global tmux v ': terminal-set global tmux tmux-terminal-vertical tmux-focus<ret>' -docstring 'Vertical'
  map global tmux w ': terminal-set global tmux tmux-terminal-window tmux-focus<ret>' -docstring 'Window'

  # X11 – https://x.org
  # https://github.com/mawww/kakoune/blob/master/rc/windowing/x11.kak
  declare-user-mode x11
  map global terminal x ': enter-user-mode x11<ret>' -docstring 'X11'
  map global x11 w ': terminal-set global x11 x11-terminal x11-focus<ret>' -docstring 'Window'

}

require-module terminal-mode
