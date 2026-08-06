# stefanprodan/tap

Homebrew tap for [@stefanprodan](https://github.com/stefanprodan)'s tools.

## Setup

Homebrew requires third-party taps to be trusted before their formulas can be loaded.
Run this once per machine:

```sh
brew tap stefanprodan/tap
brew trust --tap stefanprodan/tap
```

## Formulas

| Formula | Description | Upstream |
|---------|-------------|----------|
| [cctop](#cctop) | Live top-style monitor for Claude Code sessions | [stefanprodan/cctop](https://github.com/stefanprodan/cctop) |
| [timoni](#timoni) | Package manager for Kubernetes powered by CUE | [stefanprodan/timoni](https://github.com/stefanprodan/timoni) |

### cctop

Install:

```sh
brew install stefanprodan/tap/cctop
```

Upgrade:

```sh
brew update && brew upgrade cctop
```

### timoni

Install:

```sh
brew install stefanprodan/tap/timoni
```

Upgrade:

```sh
brew update && brew upgrade timoni
```

Shell completions for bash, zsh and fish are installed with the formula.
To also install the [CUE](https://cuelang.org) CLI for module development,
pass `--with-cue`.

## License

The formulas in this tap are released under the [Apache 2.0 License](LICENSE).
The packaged tools are licensed under their own upstream licenses.
