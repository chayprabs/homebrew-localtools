class LocaltoolsOgImageGenerator < Formula
  desc "Design and render Open Graph / social card images offline: templates, live preview, code highlighting, batch"
  homepage "https://tools.chaitanyaprabuddha.com/og-image-generator"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/og-image-generator-v1.0.0/og-image-generator-1.0.0-macos-arm64.zip"
      sha256 "fc821d327214b1c55e52c874db28dd0d18430ec3b3618a1262e205be86f68eb9"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/og-image-generator-v1.0.0/og-image-generator-1.0.0-macos-x64.zip"
      sha256 "16c4bfe579f526e6da8f28a0c32a0222b203ab4170976833a8c2e3ca0b57fbfc"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/og-image-generator-v1.0.0/og-image-generator-1.0.0-linux-x64.zip"
      sha256 "a360782d07b98d70e3b67659e5bcc785706574d75edfc0e9b13eec7502c0afeb"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/og-image-generator-v1.0.0/og-image-generator-1.0.0-linux-arm64.zip"
      sha256 "7c293065ad3f0e6aee3ca7a7541417e7c903e7ff6f87fdc68ee80220b804640d"
    end
  end

  def install
    libexec.install Dir["*"]
    chmod 0755, libexec/"localtools-og-image-generator"
    bin.install_symlink libexec/"localtools-og-image-generator"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/localtools-og-image-generator --version")
  end
end
