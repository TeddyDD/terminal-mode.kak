# terminal-mode.kak

Terminal mode for [Kakoune].

## Installation

Add [`terminal-mode.kak`](rc/terminal-mode.kak) to your autoload or source it manually.

## Usage

Enter Terminal mode with `enter-user-mode terminal`.

## Configuration

``` kak
map global user t ': enter-user-mode terminal<ret>' -docstring 'Terminal'
```

[Kakoune]: https://kakoune.org
