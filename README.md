# Homebrew tap for GitHawk

```bash
brew tap masitings/tap
brew trust masitings/tap
brew install --cask githawk
```

Homebrew only loads casks from taps you trust, hence the `brew trust` step.

[GitHawk](https://github.com/masitings/githawk) is a fast, local-first Git client. The app updates itself, so `brew upgrade` is only needed if you turn that off. The cask here is bumped automatically when a GitHawk release is published.
