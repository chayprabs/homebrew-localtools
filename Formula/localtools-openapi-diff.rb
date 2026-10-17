class LocaltoolsOpenapiDiff < Formula
  desc "Diff two OpenAPI 3 or Swagger specs and list breaking changes with severity"
  homepage "https://tools.chaitanyaprabuddha.com/openapi-diff"
  version "1.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/openapi-diff-v1.0.2/openapi-diff-1.0.2-macos-arm64.zip"
      sha256 "42997626c423e791d4c018dbc0f35e563d9e00fc254cfb31721e21f095b2ad08"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/openapi-diff-v1.0.2/openapi-diff-1.0.2-macos-x64.zip"
      sha256 "2930c4cb7eab9087be1775eef0396c5ee9692b4577c7a2f12a6736d965d65e4d"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/openapi-diff-v1.0.2/openapi-diff-1.0.2-linux-x64.zip"
      sha256 "8a32f930ea23c19f4971285c4ab090d66f1f7428960977a480d4915ae230806c"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/openapi-diff-v1.0.2/openapi-diff-1.0.2-linux-arm64.zip"
      sha256 "1751114e5d82e83dddda205b7bb34da2ab48a1f8ed243bc0af1e7ae42e5091d5"
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
