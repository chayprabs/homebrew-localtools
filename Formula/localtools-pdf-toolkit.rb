class LocaltoolsPdfToolkit < Formula
  desc "Merge, split, reorder, rotate, compress, stamp, number, encrypt and fill PDF forms, offline"
  homepage "https://tools.chaitanyaprabuddha.com/pdf-toolkit"
  version "1.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/pdf-toolkit-v1.0.2/pdf-toolkit-1.0.2-macos-arm64.zip"
      sha256 "2c160482e8ab0129e1999940ef4570b49ac5bb0185ccc6fe57a483e0c7700a69"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/pdf-toolkit-v1.0.2/pdf-toolkit-1.0.2-macos-x64.zip"
      sha256 "ceddedfd5b15b5893a0da9f2e49173ae2b6f205d88665f338bee5263c12b6c19"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/pdf-toolkit-v1.0.2/pdf-toolkit-1.0.2-linux-x64.zip"
      sha256 "e0e7c4e9abb23f84d6b7f87647d4a9178c4e9a6a9bc37d584c0fe3d7e7c8f084"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/pdf-toolkit-v1.0.2/pdf-toolkit-1.0.2-linux-arm64.zip"
      sha256 "5037a3b410ad22dbdfe6925e532fd71cc58a81575a4de66d179b352df0bc08fe"
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
