class LocaltoolsGithubActionsLinter < Formula
  desc "Lint GitHub Actions workflows and composite actions for errors and security issues (script injection, permissions, unpinned actions) with a fix per finding"
  homepage "https://tools.chaitanyaprabuddha.com/github-actions-linter"
  version "1.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/github-actions-linter-v1.0.3/github-actions-linter-1.0.3-macos-arm64.zip"
      sha256 "4bd6c500f3fa1153e88537157c326e9529c7ae2e16424574b680089edb828554"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/github-actions-linter-v1.0.3/github-actions-linter-1.0.3-macos-x64.zip"
      sha256 "12ca3f7c76761fbc382965a000193b23e5ad461bb799b5d49ad5fe292aaa7eea"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/github-actions-linter-v1.0.3/github-actions-linter-1.0.3-linux-x64.zip"
      sha256 "9c0e1e8ae02bc96678a4d5d43a660cd12aacb900026b1b6a549c199b96b27712"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/github-actions-linter-v1.0.3/github-actions-linter-1.0.3-linux-arm64.zip"
      sha256 "f248d7c8421b1806b4f5e6f8eb9c9e594f23b9d3eb9cb1e075197dab04e28ef7"
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
