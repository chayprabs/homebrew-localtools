class LocaltoolsOpenapiDiff < Formula
  desc "Diff two OpenAPI 3 or Swagger specs and list breaking changes with severity"
  homepage "https://tools.chaitanyaprabuddha.com/openapi-diff"
  version "1.0.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/openapi-diff-v1.0.4/openapi-diff-1.0.4-macos-arm64.zip"
      sha256 "2c9888a4e8000612e1a01c1af7696902c8281ff3cb02f025e672fe40411df09f"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/openapi-diff-v1.0.4/openapi-diff-1.0.4-macos-x64.zip"
      sha256 "52689de016e96f4ee138ab3f72b9bce4e7abcc7d1b6c24d8d83797f605074729"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/openapi-diff-v1.0.4/openapi-diff-1.0.4-linux-x64.zip"
      sha256 "8773e1012dd64de328b1a5b14012fb153c0ca019aa40fd98343874d9467eb6ef"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/openapi-diff-v1.0.4/openapi-diff-1.0.4-linux-arm64.zip"
      sha256 "a7f0b2cdd62692b73f30ba8f94c2e93b0d27480609df7fc088761239c9b7d9a9"
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
