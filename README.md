# terminal-mode.kak

Terminal mode for [Kakoune].
A mode to manage the various windowing systems.

## Installation

Add [`terminal-mode.kak`](rc/terminal-mode.kak) to your autoload or source it manually.

## Usage

Enter Terminal mode with `enter-user-mode terminal`.

## Configuration

``` kak
map global normal <c-w> ': enter-user-mode terminal<ret>' -docstring 'Terminal'
```

[Kakoune]: https://kakoune.org
