class LocaltoolsPandocGui < Formula
  desc "Convert documents between Markdown, DOCX, HTML, EPUB, LaTeX and PDF with pandoc"
  homepage "https://tools.chaitanyaprabuddha.com/pandoc-gui"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/pandoc-gui-v1.0.0/pandoc-gui-1.0.0-macos-arm64.zip"
      sha256 "a315cf2c17572246c2cbcd0b6a6d4c82fb808f6c9bad3bb70690a87b1a257484"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/pandoc-gui-v1.0.0/pandoc-gui-1.0.0-macos-x64.zip"
      sha256 "31fc8c21c8e86c506d6de03f82e35401ebca0eacd682a60ea212e031bb555994"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/pandoc-gui-v1.0.0/pandoc-gui-1.0.0-linux-x64.zip"
      sha256 "360542ef79d1d258d23f2fb899ef1a35c81cc8ba96310e3ba63dd7199d7339bc"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/pandoc-gui-v1.0.0/pandoc-gui-1.0.0-linux-arm64.zip"
      sha256 "567604856d09e00e308d77b862c861170d1a8d4d7811e2a59bc96085184adde0"
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
