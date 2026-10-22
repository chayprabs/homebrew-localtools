class LocaltoolsGraphqlDiff < Formula
  desc "Compare two GraphQL schemas and classify breaking, dangerous and safe changes"
  homepage "https://tools.chaitanyaprabuddha.com/graphql-diff"
  version "1.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/graphql-diff-v1.0.2/graphql-diff-1.0.2-macos-arm64.zip"
      sha256 "efaac7ad985043dc57c8ebe3dbe0181f4d1d31f227f8e889a93a44a4868b81da"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/graphql-diff-v1.0.2/graphql-diff-1.0.2-macos-x64.zip"
      sha256 "a109a64601b07fa96e641289e98b8c8df621cc47a41ba7f876d99c14c11b0617"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/graphql-diff-v1.0.2/graphql-diff-1.0.2-linux-x64.zip"
      sha256 "8a3e7c88d61bb070133b774256b287c9dbd09eec973e7d308c467ac7b54aae4a"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/graphql-diff-v1.0.2/graphql-diff-1.0.2-linux-arm64.zip"
      sha256 "160ec1d2b5f25397b80528360f5ca51b2a4911ac9b73ab8f70c8c403081a8de5"
    end
  end

  def install
    libexec.install Dir["*"]
    chmod 0755, libexec/"localtools-graphql-diff"
    bin.install_symlink libexec/"localtools-graphql-diff"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/localtools-graphql-diff --version")
  end
end
