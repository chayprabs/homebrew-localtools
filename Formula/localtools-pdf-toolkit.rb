class LocaltoolsPdfToolkit < Formula
  desc "Merge, split, reorder, rotate, compress, stamp, number, encrypt and fill PDF forms, offline"
  homepage "https://tools.chaitanyaprabuddha.com/pdf-toolkit"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/pdf-toolkit-v1.0.0/pdf-toolkit-1.0.0-macos-arm64.zip"
      sha256 "c43f3c2ce66bd76eaeeb7637b45b263430cfa5c4344d198b77e37035932e6a77"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/pdf-toolkit-v1.0.0/pdf-toolkit-1.0.0-macos-x64.zip"
      sha256 "bd326ceabf38d1cbc3baff3d921029236b1905bed1d02e4099eead0a565c2be7"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/pdf-toolkit-v1.0.0/pdf-toolkit-1.0.0-linux-x64.zip"
      sha256 "b9a8f6a1632ec189c2650e4a81a68cf3198fdd47e71aaaabca3dd075ef22df17"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/pdf-toolkit-v1.0.0/pdf-toolkit-1.0.0-linux-arm64.zip"
      sha256 "0a9cabf347ed15b6063ce975cd7b52dd8e07b5daf35924524ee49edf75f088b1"
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
