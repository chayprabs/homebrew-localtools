class LocaltoolsEpubValidator < Formula
  desc "Validate EPUB files with EPUBCheck and repair common errors"
  homepage "https://tools.chaitanyaprabuddha.com/epub-validator"
  version "1.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/epub-validator-v1.0.1/epub-validator-1.0.1-macos-arm64.zip"
      sha256 "a094c37892d211c7445a85c686149edd3898af3d0a06a2262299b35e53fa19f9"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/epub-validator-v1.0.1/epub-validator-1.0.1-macos-x64.zip"
      sha256 "06fb0ee7ddd5c5e90adf520af5da57a571bc75fec23fa4e689fb80f94faf993d"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/epub-validator-v1.0.1/epub-validator-1.0.1-linux-x64.zip"
      sha256 "688da5a063f7258adb7f4122dc54677af98b26546750b85515e8b29af2aadccd"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/epub-validator-v1.0.1/epub-validator-1.0.1-linux-arm64.zip"
      sha256 "e6347c2bd96c8faf3ba3032dd09b1a8810c56625c6d05a8d017e2e46f1a67894"
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
