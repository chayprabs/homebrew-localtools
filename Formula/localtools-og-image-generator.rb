class LocaltoolsOgImageGenerator < Formula
  desc "Design and render Open Graph / social card images offline: templates, live preview, code highlighting, batch"
  homepage "https://tools.chaitanyaprabuddha.com/og-image-generator"
  version "1.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/og-image-generator-v1.0.3/og-image-generator-1.0.3-macos-arm64.zip"
      sha256 "09934003f5bad1d4a9cabfd5ca6afe0cae9057c94eaa9b7821f05d358c8f292d"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/og-image-generator-v1.0.3/og-image-generator-1.0.3-macos-x64.zip"
      sha256 "989b074e209f81eb4f93f7669015810cb923329d6f2c2c237ef500914c9fe376"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/og-image-generator-v1.0.3/og-image-generator-1.0.3-linux-x64.zip"
      sha256 "61b52c4b063fad207757727d283936242b852da22c4933389f273b22c0326018"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/og-image-generator-v1.0.3/og-image-generator-1.0.3-linux-arm64.zip"
      sha256 "fb8641d5e2b3af14ccf1429861c8b9285b1a490c4483ac5a42df4c2164ab4221"
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
