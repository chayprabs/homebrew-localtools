class LocaltoolsGithubActionsLinter < Formula
  desc "Lint GitHub Actions workflows for correctness and security issues, with line-level findings and suggested fixes"
  homepage "https://tools.chaitanyaprabuddha.com/github-actions-linter"
  version "1.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/github-actions-linter-v1.0.1/github-actions-linter-1.0.1-macos-arm64.zip"
      sha256 "6f5eb00e36cbee2c1c253739df849083bcbe3e9ac854eefea2661fc6009979e7"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/github-actions-linter-v1.0.1/github-actions-linter-1.0.1-macos-x64.zip"
      sha256 "9ef0a54eb3c5efa160d55d20e181deee121a140ea486ec5ccd04248603f260b6"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/github-actions-linter-v1.0.1/github-actions-linter-1.0.1-linux-x64.zip"
      sha256 "1f5655687218da1cadd9b2d0c6506997391589e532e5420a87b063b6202cd7ce"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/github-actions-linter-v1.0.1/github-actions-linter-1.0.1-linux-arm64.zip"
      sha256 "a0100cd630b6b912b0d16d97ca16590646cdd4d22723eaa2b01cc69b5b6c3924"
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
