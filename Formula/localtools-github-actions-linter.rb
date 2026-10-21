class LocaltoolsGithubActionsLinter < Formula
  desc "Lint GitHub Actions workflows and composite actions for errors and security issues (script injection, permissions, unpinned actions) with a fix per finding"
  homepage "https://tools.chaitanyaprabuddha.com/github-actions-linter"
  version "1.0.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/github-actions-linter-v1.0.4/github-actions-linter-1.0.4-macos-arm64.zip"
      sha256 "3807c8af5399408134e23fcf14cdc06b022dfa52abed73173390572ce1463856"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/github-actions-linter-v1.0.4/github-actions-linter-1.0.4-macos-x64.zip"
      sha256 "19c4edc54e231280c19aa0cfcf5490fd5b00de42175d540b8f02453409efbd38"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/github-actions-linter-v1.0.4/github-actions-linter-1.0.4-linux-x64.zip"
      sha256 "487de24f8fa7bbdfb9e6195f6d23619825f50d84ecfc50fa4caa651213b1c340"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/github-actions-linter-v1.0.4/github-actions-linter-1.0.4-linux-arm64.zip"
      sha256 "c6e1f8275551d87f656e67b08ebe350f6b3cb4464107348680ab5bf6fbb2493b"
    end
  end

  def install
    libexec.install Dir["*"]
    chmod 0755, libexec/"localtools-github-actions-linter"
    bin.install_symlink libexec/"localtools-github-actions-linter"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/localtools-github-actions-linter --version")
  end
end
