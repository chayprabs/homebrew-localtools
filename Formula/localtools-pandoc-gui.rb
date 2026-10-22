class LocaltoolsPandocGui < Formula
  desc "Convert documents between Markdown, DOCX, HTML, EPUB, LaTeX and PDF with pandoc"
  homepage "https://tools.chaitanyaprabuddha.com/pandoc-gui"
  version "1.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/pandoc-gui-v1.0.3/pandoc-gui-1.0.3-macos-arm64.zip"
      sha256 "fc0d7fd221824f7124bf90cad34ddf23df856021f66f2b8f6ff68e0153cba11d"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/pandoc-gui-v1.0.3/pandoc-gui-1.0.3-macos-x64.zip"
      sha256 "5c570520d57a1491bbbdef6df1cb5555469d15d59a63601b3a3a265cc9eb86e6"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/pandoc-gui-v1.0.3/pandoc-gui-1.0.3-linux-x64.zip"
      sha256 "e29e71ee840c367753fe982157059d054aa4d107cd6ed896015ed8d2d023038a"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/pandoc-gui-v1.0.3/pandoc-gui-1.0.3-linux-arm64.zip"
      sha256 "4f60d8ccf630d9a5b157be62ac8d7f26bebf6f28a0915a15e70488b82650b681"
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
