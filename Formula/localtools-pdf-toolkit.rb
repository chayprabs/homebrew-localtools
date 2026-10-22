class LocaltoolsPdfToolkit < Formula
  desc "Merge, split, reorder, rotate, compress, stamp, number, encrypt and fill PDF forms, offline"
  homepage "https://tools.chaitanyaprabuddha.com/pdf-toolkit"
  version "1.0.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/pdf-toolkit-v1.0.6/pdf-toolkit-1.0.6-macos-arm64.zip"
      sha256 "169f0e4b5f73c3287967130281354d681acecb3482146a1b63c8e5c4bb2def83"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/pdf-toolkit-v1.0.6/pdf-toolkit-1.0.6-macos-x64.zip"
      sha256 "2b28ddef48f1275637fe741e225ed1084bdf2d40a952a0b07e3d8b3a3384dce5"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/pdf-toolkit-v1.0.6/pdf-toolkit-1.0.6-linux-x64.zip"
      sha256 "dcbb312e82d61d356e22ac524b54866b04671e0e19e9673c0f013b521f213eb5"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/pdf-toolkit-v1.0.6/pdf-toolkit-1.0.6-linux-arm64.zip"
      sha256 "d70cb4afafd2586ece756dc05676e64a5de4086b057e376cd56182f15624e29e"
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
