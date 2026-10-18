class LocaltoolsGithubActionsLinter < Formula
  desc "Lint GitHub Actions workflows for correctness and security issues, with line-level findings and suggested fixes"
  homepage "https://tools.chaitanyaprabuddha.com/github-actions-linter"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/github-actions-linter-v1.0.0/github-actions-linter-1.0.0-macos-arm64.zip"
      sha256 "f7116d0b6e7bddd1bb99b659974419afa720a212abab242437301e6d984e28f5"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/github-actions-linter-v1.0.0/github-actions-linter-1.0.0-macos-x64.zip"
      sha256 "b8dd64575b11de0784f1aa7d5ca435edf1000a05063d6c42742506f326d265e0"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/github-actions-linter-v1.0.0/github-actions-linter-1.0.0-linux-x64.zip"
      sha256 "600873ba64a405d75c38ab77ab9e8f748cbb0a771ba6e3a9855511cf2c0fdd90"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/github-actions-linter-v1.0.0/github-actions-linter-1.0.0-linux-arm64.zip"
      sha256 "94601ae3b8f71c490672919f29575a23cd76807676857f25a5bec6a89fd991b8"
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
