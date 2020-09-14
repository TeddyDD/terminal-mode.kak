# terminal-mode.kak

A **Terminal** mode for [Kakoune] to easily switch between the various windowing systems
([iTerm], [kitty], [Screen], [tmux], [X11]).

[Kakoune]: https://kakoune.org
[iTerm]: https://iterm2.com
[kitty]: https://sw.kovidgoyal.net/kitty/
[Screen]: https://gnu.org/software/screen/
[tmux]: https://github.com/tmux/tmux
[X11]: https://x.org

## Installation

Add [`terminal-mode.kak`](rc/terminal-mode.kak) to your autoload or source it manually.

``` kak
require-module terminal-mode
```

## Usage

Enter Terminal mode with `enter-user-mode terminal`.

## Configuration

``` kak
map global normal -docstring 'Terminal' <c-w> ': enter-user-mode terminal<ret>'
```
