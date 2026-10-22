class LocaltoolsPdfToolkit < Formula
  desc "Merge, split, reorder, rotate, compress, stamp, number, encrypt and fill PDF forms, offline"
  homepage "https://tools.chaitanyaprabuddha.com/pdf-toolkit"
  version "1.0.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/pdf-toolkit-v1.0.7/pdf-toolkit-1.0.7-macos-arm64.zip"
      sha256 "4fe23843042662569c08337c5801cf224ed2144f2ad16b8a8370214b0171a9a1"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/pdf-toolkit-v1.0.7/pdf-toolkit-1.0.7-macos-x64.zip"
      sha256 "20d7ac83cad8d3562876435678de9f22b39330d7ebc622ac7203dae979652265"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/pdf-toolkit-v1.0.7/pdf-toolkit-1.0.7-linux-x64.zip"
      sha256 "4e0664442d6b43124eaf48f6595e2283c2d08e029562aaf314c7bb01c68d41a6"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/pdf-toolkit-v1.0.7/pdf-toolkit-1.0.7-linux-arm64.zip"
      sha256 "40cdffa731992d203731aa2490d7140e057905f40bdca1767670d888a29f2a0e"
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
