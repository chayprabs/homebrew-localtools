class LocaltoolsOpenapiDiff < Formula
  desc "Diff two OpenAPI 3 or Swagger specs and list breaking changes with severity"
  homepage "https://tools.chaitanyaprabuddha.com/openapi-diff"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/openapi-diff-v1.0.0/openapi-diff-1.0.0-macos-arm64.zip"
      sha256 "79575dcd9287056a3ee45edc697c13d92d18c54338d095c86070875fa1fca975"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/openapi-diff-v1.0.0/openapi-diff-1.0.0-macos-x64.zip"
      sha256 "a3a53ccc2a19baa5ae5aea2022e7a882de1b44f92cf3b94f0137f56b6bd11a0c"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/openapi-diff-v1.0.0/openapi-diff-1.0.0-linux-x64.zip"
      sha256 "9df15620beb338dd5aec367c29ab9dbe5d1ef8a4224ea5485722b3d4e0824526"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/openapi-diff-v1.0.0/openapi-diff-1.0.0-linux-arm64.zip"
      sha256 "f7fdb343f149918b87c4f01c2e1d401caab9d677e723d3d3c5e2324900537286"
    end
  end

  def install
    libexec.install Dir["*"]
    chmod 0755, libexec/"localtools-openapi-diff"
    bin.install_symlink libexec/"localtools-openapi-diff"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/localtools-openapi-diff --version")
  end
end
