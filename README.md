# ft3-labs Homebrew Tap

Homebrew tap for FeverTokens / ft3-labs CLIs.

## Install

```bash
brew install ft3-labs/tap/fever
```

That fetches a pre-built single-file binary from
[`fever-cli-releases`](https://github.com/ft3-labs/fever-cli-releases/releases)
— no Deno toolchain required on the user's machine.

Supported platforms: macOS (Apple Silicon + Intel) and Linux (x86_64 + aarch64).

## Upgrade

```bash
brew update
brew upgrade fever
```

## Uninstall

```bash
brew uninstall fever
brew untap ft3-labs/tap
```

## Source

- CLI source: <https://github.com/FeverTokens/fever-cli>
- Public binary mirror: <https://github.com/ft3-labs/fever-cli-releases>
- Also on JSR: <https://jsr.io/@fevertokens/cli>

> `Formula/fever.rb` is regenerated on every stable release by
> [`release-deno.yml`](https://github.com/ft3-labs/fever-cli/blob/main/.github/workflows/release-deno.yml)
> in `fever-cli`. Manual edits will be overwritten.
