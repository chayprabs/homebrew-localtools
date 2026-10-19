class LocaltoolsOgImageGenerator < Formula
  desc "Design and render Open Graph / social card images offline: templates, live preview, code highlighting, batch"
  homepage "https://tools.chaitanyaprabuddha.com/og-image-generator"
  version "1.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/og-image-generator-v1.0.1/og-image-generator-1.0.1-macos-arm64.zip"
      sha256 "1d103dfbba3cec4ce4e85aac433d37b4423ec72da27ea7a09c836a68ed076cb4"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/og-image-generator-v1.0.1/og-image-generator-1.0.1-macos-x64.zip"
      sha256 "28cd3e7c7fcda406d701e16a69926c336b2c41c8532198f5e60216004762044e"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/og-image-generator-v1.0.1/og-image-generator-1.0.1-linux-x64.zip"
      sha256 "676885fbe4d8325241673d43ffe69291eb9066dbcf760611bda48cbbb68eb74c"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/og-image-generator-v1.0.1/og-image-generator-1.0.1-linux-arm64.zip"
      sha256 "690546c5f37103f796100af68d43074068d007839c431b8fe33b7ec309013930"
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
