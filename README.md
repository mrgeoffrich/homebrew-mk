# homebrew-mk

Homebrew tap for [mk (mini-kanban)](https://github.com/mrgeoffrich/mini-kanban) — a local-first issue tracker with a CLI and TUI, designed for AI agents.

## Install

```sh
brew tap mrgeoffrich/mk
brew install mk
```

Then:

```sh
mk --help
mk tui
```

## Upgrade

```sh
brew update
brew upgrade mk
```

## Uninstall

```sh
brew uninstall mk
brew untap mrgeoffrich/mk
```

## How this tap is maintained

The `Formula/mk.rb` file is regenerated automatically by mini-kanban's release workflow on every new tagged release. Manual edits to the formula will be overwritten — change the [render script](https://github.com/mrgeoffrich/mini-kanban/blob/main/scripts/render-tap-formula.sh) in the main repo instead.
