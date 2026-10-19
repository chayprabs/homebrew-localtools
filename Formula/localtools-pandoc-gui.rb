class LocaltoolsPandocGui < Formula
  desc "Convert documents between Markdown, DOCX, HTML, EPUB, LaTeX and PDF with pandoc"
  homepage "https://tools.chaitanyaprabuddha.com/pandoc-gui"
  version "1.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/pandoc-gui-v1.0.2/pandoc-gui-1.0.2-macos-arm64.zip"
      sha256 "932f6e45a67ccd95b0a588d7be3f981a838573e51e6a3d249f52cd4b334be52f"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/pandoc-gui-v1.0.2/pandoc-gui-1.0.2-macos-x64.zip"
      sha256 "931a02e8866b92563a24c13a7ce2b202d6a194e1982703f7e866bf3f20f264d9"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/pandoc-gui-v1.0.2/pandoc-gui-1.0.2-linux-x64.zip"
      sha256 "54404ad51991cda6e68073d7e33ebc16e04e4074a00da71e5e5c782f43009187"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/pandoc-gui-v1.0.2/pandoc-gui-1.0.2-linux-arm64.zip"
      sha256 "2301ebdcab522899b34beeb406b0417780e51c5af098270c78895f90c0264a8d"
    end
  end

  def install
    libexec.install Dir["*"]
    chmod 0755, libexec/"localtools-pandoc-gui"
    bin.install_symlink libexec/"localtools-pandoc-gui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/localtools-pandoc-gui --version")
  end
end
