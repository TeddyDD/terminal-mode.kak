provide-module terminal-mode %{

  # Terminal
  declare-user-mode terminal

  # Set the terminal
  # terminal-set <scope> <module> <terminal> [focus]
  define-command terminal-set -params 3..4 -docstring 'terminal-set <scope> <module> <terminal> [focus]: Set the terminal' %{
    require-module %arg{2}
    alias %arg{1} terminal %arg{3}
    try %{
      alias %arg{1} focus %arg{4}
    }
  }

  # Alacritty – https://github.com/alacritty/alacritty
  # https://github.com/alexherbo2/alacritty.kak
  declare-user-mode alacritty
  map -docstring 'Alacritty' global terminal a ': enter-user-mode alacritty<ret>'
  map -docstring 'Window' global alacritty w ': terminal-set global alacritty alacritty<ret>'

  # iTerm – https://iterm2.com
  # https://github.com/mawww/kakoune/blob/master/rc/windowing/iterm.kak
  declare-user-mode iterm
  map -docstring 'iTerm' global terminal i ': enter-user-mode iterm<ret>'
  map -docstring 'Horizontal' global iterm h ': terminal-set global iterm iterm-terminal-horizontal iterm-focus<ret>'
  map -docstring 'Tab' global iterm t ': terminal-set global iterm iterm-terminal-tab iterm-focus<ret>'
  map -docstring 'Vertical' global iterm v ': terminal-set global iterm iterm-terminal-vertical iterm-focus<ret>'
  map -docstring 'Window' global iterm w ': terminal-set global iterm iterm-terminal-window iterm-focus<ret>'

  # kitty – https://sw.kovidgoyal.net/kitty/
  # https://github.com/mawww/kakoune/blob/master/rc/windowing/kitty.kak
  declare-user-mode kitty
  map -docstring 'kitty' global terminal k ': enter-user-mode kitty<ret>'
  map -docstring 'Tab' global kitty t ': terminal-set global kitty kitty-terminal-tab kitty-focus<ret>'
  map -docstring 'Window' global kitty w ': terminal-set global kitty kitty-terminal kitty-focus<ret>'

  # Screen – https://gnu.org/software/screen/
  # https://github.com/mawww/kakoune/blob/master/rc/windowing/screen.kak
  declare-user-mode screen
  map -docstring 'Screen' global terminal s ': enter-user-mode screen<ret>'
  map -docstring 'Horizontal' global screen h ': terminal-set global screen screen-terminal-horizontal screen-focus<ret>'
  map -docstring 'Vertical' global screen v ': terminal-set global screen screen-terminal-vertical screen-focus<ret>'
  map -docstring 'Window' global screen w ': terminal-set global screen screen-terminal-window screen-focus<ret>'

  # tmux – https://github.com/tmux/tmux
  # https://github.com/mawww/kakoune/blob/master/rc/windowing/tmux.kak
  declare-user-mode tmux
  map -docstring 'tmux' global terminal t ': enter-user-mode tmux<ret>'
  map -docstring 'Horizontal' global tmux h ': terminal-set global tmux tmux-terminal-horizontal tmux-focus<ret>'
  map -docstring 'Vertical' global tmux v ': terminal-set global tmux tmux-terminal-vertical tmux-focus<ret>'
  map -docstring 'Window' global tmux w ': terminal-set global tmux tmux-terminal-window tmux-focus<ret>'

  # X11 – https://x.org
  # https://github.com/mawww/kakoune/blob/master/rc/windowing/x11.kak
  declare-user-mode x11
  map -docstring 'X11' global terminal x ': enter-user-mode x11<ret>'
  map -docstring 'Window' global x11 w ': terminal-set global x11 x11-terminal x11-focus<ret>'

}
