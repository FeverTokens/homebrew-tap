# FeverTokens Homebrew Tap

Homebrew tap for FeverTokens CLI tools.

## Install

```bash
brew install fevertokens/tap/fever
```

That fetches a pre-built single-file binary from the matching
[`fever-cli` GitHub Release](https://github.com/FeverTokens/fever-cli/releases)
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
brew untap fevertokens/tap
```

## Source

- CLI source: <https://github.com/FeverTokens/fever-cli>
- Also published on JSR: <https://jsr.io/@fevertokens/cli>
