class LocaltoolsPdfToolkit < Formula
  desc "Merge, split, reorder, rotate, compress, stamp, number, encrypt and fill PDF forms, offline"
  homepage "https://tools.chaitanyaprabuddha.com/pdf-toolkit"
  version "1.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/pdf-toolkit-v1.0.3/pdf-toolkit-1.0.3-macos-arm64.zip"
      sha256 "53ca6f407a12d1b57bfdd03588e16d72b3da51fdaa1abd09890380d6ed760ae4"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/pdf-toolkit-v1.0.3/pdf-toolkit-1.0.3-macos-x64.zip"
      sha256 "f98484cd1f38cec6493738cd7de343fcc1ffe6972cad03c4a24e6506f8d21aee"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/pdf-toolkit-v1.0.3/pdf-toolkit-1.0.3-linux-x64.zip"
      sha256 "47bc3494d79e7948f8523c84c9004750ecf0c6ed0d00a6f26cc2192471fe92dd"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/pdf-toolkit-v1.0.3/pdf-toolkit-1.0.3-linux-arm64.zip"
      sha256 "2146255e946ef1805ca9c06154b64574ab3744edad1b55c2ccdff285330da344"
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
