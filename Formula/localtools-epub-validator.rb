class LocaltoolsEpubValidator < Formula
  desc "Validate EPUB files with EPUBCheck and repair common errors"
  homepage "https://tools.chaitanyaprabuddha.com/epub-validator"
  version "1.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/epub-validator-v1.0.2/epub-validator-1.0.2-macos-arm64.zip"
      sha256 "cdd56d52e00375b9463ad62ea40a2bf47e0cba985b0f1f55b769f7d7071ae9eb"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/epub-validator-v1.0.2/epub-validator-1.0.2-macos-x64.zip"
      sha256 "31aff129995abdda083bc1e5956f7d4a6245e92273bf9ce2793364b6b6de763d"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/epub-validator-v1.0.2/epub-validator-1.0.2-linux-x64.zip"
      sha256 "398cbd183d3361daa26813c68c190a42864c03d9c0faed4519f6fa15327b94b4"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/epub-validator-v1.0.2/epub-validator-1.0.2-linux-arm64.zip"
      sha256 "3fc30dc397ac594d5f89cfab1d8256f1e635c38aabbbeb79e8183480c2da8670"
    end
  end

  def install
    libexec.install Dir["*"]
    chmod 0755, libexec/"localtools-epub-validator"
    bin.install_symlink libexec/"localtools-epub-validator"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/localtools-epub-validator --version")
  end
end
