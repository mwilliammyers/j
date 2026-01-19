# j

> cd with smarts

## Install

With [`fisher`]:

```fish
fisher install PatrickF1/fzf.fish mwilliammyers/j
```

### Dependencies

- [fzf](https://github.com/junegunn/fzf)
- [fd](https://github.com/sharkdp/fd)

## Usage

```fish
j           # fuzzy find directory
j foo       # cd to foo if it's a directory, otherwise fuzzy find with "foo" as query
```

[`fisher`]: https://github.com/jorgebucaran/fisher
