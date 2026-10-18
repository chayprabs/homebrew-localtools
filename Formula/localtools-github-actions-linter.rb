class LocaltoolsGithubActionsLinter < Formula
  desc "Lint GitHub Actions workflows and composite actions for errors and security issues (script injection, permissions, unpinned actions) with a fix per finding"
  homepage "https://tools.chaitanyaprabuddha.com/github-actions-linter"
  version "1.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/github-actions-linter-v1.0.2/github-actions-linter-1.0.2-macos-arm64.zip"
      sha256 "dea8cb892872daad06dee29d714c78d114c9ebb8a4083c2efae240a177f72d51"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/github-actions-linter-v1.0.2/github-actions-linter-1.0.2-macos-x64.zip"
      sha256 "addd2b7298f2583dc2f05c47370b4078315673c14e615a00406c74e42886fb4a"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/github-actions-linter-v1.0.2/github-actions-linter-1.0.2-linux-x64.zip"
      sha256 "3d13ef1975cf60b7abdd54ba6ba0e3185552648548eb71edfbc7f6c4bbfea7d2"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/github-actions-linter-v1.0.2/github-actions-linter-1.0.2-linux-arm64.zip"
      sha256 "1479aa88b1e499b7475db482997184c55f0297cbeba1a4f4936dcc07575ee032"
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
