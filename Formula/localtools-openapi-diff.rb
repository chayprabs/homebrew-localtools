class LocaltoolsOpenapiDiff < Formula
  desc "Diff two OpenAPI 3 or Swagger specs and list breaking changes with severity"
  homepage "https://tools.chaitanyaprabuddha.com/openapi-diff"
  version "1.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/openapi-diff-v1.0.3/openapi-diff-1.0.3-macos-arm64.zip"
      sha256 "9e7b2ffc8d77a1452fd602e374910ff5d78d92269dccbda447ed191d31f20a1f"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/openapi-diff-v1.0.3/openapi-diff-1.0.3-macos-x64.zip"
      sha256 "59361976ab04bbe6128dcd3f29cf3c880086a255339b428d9c8a3760871407d1"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/openapi-diff-v1.0.3/openapi-diff-1.0.3-linux-x64.zip"
      sha256 "ffd04dc68f4a7aab6e2721cd3cf697ee0357c146acda4040e3afb0342012eec2"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/openapi-diff-v1.0.3/openapi-diff-1.0.3-linux-arm64.zip"
      sha256 "e83d6dccd6db4d1d64884bc326af22b3ca606b57f707c4cea9a6b3047f5863e3"
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
