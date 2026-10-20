class LocaltoolsEpubValidator < Formula
  desc "Validate EPUB files with EPUBCheck and repair common errors"
  homepage "https://tools.chaitanyaprabuddha.com/epub-validator"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/epub-validator-v1.0.0/epub-validator-1.0.0-macos-arm64.zip"
      sha256 "d1a6886abaf8c7231469f2f189163c7479610764623775e242a44a0bb6ef084f"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/epub-validator-v1.0.0/epub-validator-1.0.0-macos-x64.zip"
      sha256 "16e75490e7724ad1ff34357f28595a3460bf59cdea75cc815c4172f9a629b4ac"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/epub-validator-v1.0.0/epub-validator-1.0.0-linux-x64.zip"
      sha256 "6d397298cbc681c8a58c61e4993b369841632fa167721ea89867569abba27af8"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/epub-validator-v1.0.0/epub-validator-1.0.0-linux-arm64.zip"
      sha256 "c8619f7787b7e123291771354097e94f54c6c4f0f126ee23ce330b172f782eee"
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
