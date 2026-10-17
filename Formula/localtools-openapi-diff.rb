class LocaltoolsOpenapiDiff < Formula
  desc "Diff two OpenAPI 3 or Swagger specs and list breaking changes with severity"
  homepage "https://tools.chaitanyaprabuddha.com/openapi-diff"
  version "1.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/openapi-diff-v1.0.1/openapi-diff-1.0.1-macos-arm64.zip"
      sha256 "5d16fcc7b2a01197d64ca9e7872c34d010aed2c7e44a15fbf88cf4671d5427d3"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/openapi-diff-v1.0.1/openapi-diff-1.0.1-macos-x64.zip"
      sha256 "4a6cdd546a35498de5d67b68dd604c17f2f50265f5ac3f95d4e511713a8a33a2"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/openapi-diff-v1.0.1/openapi-diff-1.0.1-linux-x64.zip"
      sha256 "1de3a78f2436e6eb4cb3ab964d084fec9f34c6aa5b415ca6bef792781c34f275"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/openapi-diff-v1.0.1/openapi-diff-1.0.1-linux-arm64.zip"
      sha256 "90067dd742b38fd7d38307118ee44c49262312c60baef770d82fdecfc895b8f2"
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
