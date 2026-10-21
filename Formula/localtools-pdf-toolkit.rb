class LocaltoolsPdfToolkit < Formula
  desc "Merge, split, reorder, rotate, compress, stamp, number, encrypt and fill PDF forms, offline"
  homepage "https://tools.chaitanyaprabuddha.com/pdf-toolkit"
  version "1.0.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/pdf-toolkit-v1.0.4/pdf-toolkit-1.0.4-macos-arm64.zip"
      sha256 "85aaa6635c0405a9433d87da2d9c937a4a6e2f6f49f725fd0d0db2343e143278"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/pdf-toolkit-v1.0.4/pdf-toolkit-1.0.4-macos-x64.zip"
      sha256 "14deef7315b4dd1bdd01dca2a4fb87942a4b69816e6085421cd6abdba538a371"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/pdf-toolkit-v1.0.4/pdf-toolkit-1.0.4-linux-x64.zip"
      sha256 "be2bb4216214b570ff75bd300dd8bc137b8d63cc9ea29d9a969c407537a84525"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/pdf-toolkit-v1.0.4/pdf-toolkit-1.0.4-linux-arm64.zip"
      sha256 "0f906a26987b87b945c81af0102ab8c9bfd4198756ea985e4eca954bfd0756d8"
    end
  end

  def install
    libexec.install Dir["*"]
    chmod 0755, libexec/"localtools-pdf-toolkit"
    bin.install_symlink libexec/"localtools-pdf-toolkit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/localtools-pdf-toolkit --version")
  end
end
