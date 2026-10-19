class LocaltoolsOgImageGenerator < Formula
  desc "Design and render Open Graph / social card images offline: templates, live preview, code highlighting, batch"
  homepage "https://tools.chaitanyaprabuddha.com/og-image-generator"
  version "1.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/og-image-generator-v1.0.2/og-image-generator-1.0.2-macos-arm64.zip"
      sha256 "15791f3a0209f20de04341fe511ed6d7cd8403bd66c3194678f5c1503a69302a"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/og-image-generator-v1.0.2/og-image-generator-1.0.2-macos-x64.zip"
      sha256 "df1ee3651ecbc3b186d0537367ff8e27238d55e3513a72a6d75cbb8b8b556457"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/og-image-generator-v1.0.2/og-image-generator-1.0.2-linux-x64.zip"
      sha256 "e6a89762215e57fec2fb37478d48e91b9b761976eaa04e9ed89827ea299ebeab"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/og-image-generator-v1.0.2/og-image-generator-1.0.2-linux-arm64.zip"
      sha256 "93f5b24a507befe4e283a4175e5ebb99abaa0a5f06aa807f2267755ccb66194c"
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
