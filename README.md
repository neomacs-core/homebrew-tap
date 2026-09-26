# Neomacs Core Tap

Homebrew cask for [Neomacs](https://github.com/eval-exec/neomacs) — an
Emacs-compatible text editor with a GPU-accelerated renderer.

## Install

Install the fully qualified token; this trusts only this cask:

    brew install --cask neomacs-core/tap/neomacs

Or trust the cask first and then use the short name:

    brew trust --cask neomacs-core/tap/neomacs
    brew install --cask neomacs

`brew upgrade --cask neomacs` picks up new releases.

## What gets installed

- `Neomacs.app` into `/Applications`
- `neomacs` and `neomacsclient` command-line symlinks into `$(brew --prefix)/bin`

## Release verification

Current releases are ad-hoc signed and notarization is not configured yet, so
macOS Gatekeeper blocks the first launch of every downloaded copy — including
Homebrew's, which sets the quarantine attribute. Approve *Neomacs* once in
*System Settings → Privacy & Security → Open Anyway*; the block disappears
entirely once releases are notarized.

## Cask maintenance

`.github/workflows/autobump.yml` runs `brew bump --casks` against
[`eval-exec/neomacs`](https://github.com/eval-exec/neomacs) releases and opens
a pull request when a new version is published. `.github/workflows/tests.yml`
styles, audits, checksums, livechecks, installs, and uninstalls the cask on
every change.
