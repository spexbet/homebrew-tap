# Spex Homebrew tap

Casks for the Spex family of Kalshi apps. See https://spex.bet.

```sh
brew tap spexbet/tap
brew install --cask spex-glance
```

| Cask | App | Notes |
|---|---|---|
| `spex-glance` | [Spex Glance](https://spex.bet/glance/) | Apple silicon, macOS 15+. Updates itself via Sparkle. |

`brew uninstall --zap --cask spex-glance` removes the app and its settings. The Kalshi API key stays in your login keychain; delete it there if you want it gone too.
