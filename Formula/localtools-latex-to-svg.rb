class LocaltoolsLatexToSvg < Formula
  desc "Render LaTeX, MathML or AsciiMath to SVG, PNG and MathML with speech alt text, offline with MathJax"
  homepage "https://tools.chaitanyaprabuddha.com/latex-to-svg"
  version "1.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/latex-to-svg-v1.0.2/latex-to-svg-1.0.2-macos-arm64.zip"
      sha256 "81e729e22377bd04993c5c0b382be3e15fa475424cade0ff8583041d5478e8cc"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/latex-to-svg-v1.0.2/latex-to-svg-1.0.2-macos-x64.zip"
      sha256 "8383d8750d21e1ec9c71feb236c29e42ba63c618cee47aa40713be3fe0dfd697"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/latex-to-svg-v1.0.2/latex-to-svg-1.0.2-linux-x64.zip"
      sha256 "f1dee7d9ef13c6ead70838a3c28f9bd20eca47c542056d43cbe0103472e91c6c"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/latex-to-svg-v1.0.2/latex-to-svg-1.0.2-linux-arm64.zip"
      sha256 "77b87fdb47657f0c718bbabc505dd443b3d6b1a1bf316b61ad9f439eda689fa8"
    end
  end

  def install
    libexec.install Dir["*"]
    chmod 0755, libexec/"localtools-latex-to-svg"
    bin.install_symlink libexec/"localtools-latex-to-svg"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/localtools-latex-to-svg --version")
  end
end
