class LocaltoolsPdfToolkit < Formula
  desc "Merge, split, reorder, rotate, compress, stamp, number, encrypt and fill PDF forms, offline"
  homepage "https://tools.chaitanyaprabuddha.com/pdf-toolkit"
  version "1.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/pdf-toolkit-v1.0.1/pdf-toolkit-1.0.1-macos-arm64.zip"
      sha256 "fe0d6d91722a7263ae8dcdf651aa323cb240521ad2df3e359c043f6e0f72a348"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/pdf-toolkit-v1.0.1/pdf-toolkit-1.0.1-macos-x64.zip"
      sha256 "21055f635ebc9a902de1a35852f57f62188a21c8c0b07bffd923487a24a1ecf3"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/pdf-toolkit-v1.0.1/pdf-toolkit-1.0.1-linux-x64.zip"
      sha256 "6b358c2994453cc33dde8aec782ade896f4e1a988f339afde9cef7d38bbb0d9a"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/pdf-toolkit-v1.0.1/pdf-toolkit-1.0.1-linux-arm64.zip"
      sha256 "b75bb829eedf4257cce2474642f822e43cdd165fa3599d9c18541a7d3b1f7813"
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
