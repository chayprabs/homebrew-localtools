class LocaltoolsPdfToolkit < Formula
  desc "Merge, split, reorder, rotate, compress, stamp, number, encrypt and fill PDF forms, offline"
  homepage "https://tools.chaitanyaprabuddha.com/pdf-toolkit"
  version "1.0.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/pdf-toolkit-v1.0.5/pdf-toolkit-1.0.5-macos-arm64.zip"
      sha256 "b68640e568814fab43881c3cf64a5fda0400ef68f60b55f4ee8d3fb04bab562d"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/pdf-toolkit-v1.0.5/pdf-toolkit-1.0.5-macos-x64.zip"
      sha256 "0a10d4ac3abb38b1c344aea046f2a7b7cb753bee82a7bf00916c7d2af11d1579"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/pdf-toolkit-v1.0.5/pdf-toolkit-1.0.5-linux-x64.zip"
      sha256 "fd092b597e44b582ba7f7c82c4f621ec4348b17aa0eb63620452b626dae42d8e"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/pdf-toolkit-v1.0.5/pdf-toolkit-1.0.5-linux-arm64.zip"
      sha256 "d1cd0284ae2e1558c7a03b740132bff129656e4aa9ee263f99e2c04380aa6d63"
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
