# homebrew-localtools

Package manager repo for [localtools](https://tools.chaitanyaprabuddha.com): free offline tools that run on your machine.
It is both the Homebrew tap (`Formula/`) and the Scoop bucket (`bucket/`).

## Homebrew (macOS, Linux)

```sh
brew install chayprabs/localtools/localtools-<tool>
```

Works on macOS (Apple Silicon and Intel) and Linux. Run `localtools-<tool>` to start it in your browser.
Update with `brew upgrade`, remove with `brew uninstall localtools-<tool>`.

## Scoop (Windows)

```powershell
scoop bucket add localtools https://github.com/chayprabs/homebrew-localtools
scoop install localtools-<tool>
```

Run `localtools-<tool>` to start it in your browser. Update with `scoop update localtools-<tool>`, remove with
`scoop uninstall localtools-<tool>`.

If you added the bucket before it moved here from `chayprabs/scoop-localtools`, point it at the new URL once:

```powershell
scoop bucket rm localtools
scoop bucket add localtools https://github.com/chayprabs/homebrew-localtools
```

Your installed tools stay installed.

---

Formulae and manifests are generated from the localtools release manifest; please report problems at
https://github.com/chayprabs/localtools/issues.
