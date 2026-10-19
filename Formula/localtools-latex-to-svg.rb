class LocaltoolsLatexToSvg < Formula
  desc "Render LaTeX, MathML or AsciiMath to SVG, PNG and MathML with speech alt text, offline with MathJax"
  homepage "https://tools.chaitanyaprabuddha.com/latex-to-svg"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/latex-to-svg-v1.0.0/latex-to-svg-1.0.0-macos-arm64.zip"
      sha256 "6b316b42fe67857e6a990587415ec976c1fbc466444d23ce262cc877ef7ab0df"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/latex-to-svg-v1.0.0/latex-to-svg-1.0.0-macos-x64.zip"
      sha256 "35492b039286182d8d0add409d0c24a226ff11b7e0a9b6772cc4ed04f91a1f55"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/latex-to-svg-v1.0.0/latex-to-svg-1.0.0-linux-x64.zip"
      sha256 "c47c80bb9a841705823a207b8bc288ec0e615ece10d4da111f6e00a5c2f6806c"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/latex-to-svg-v1.0.0/latex-to-svg-1.0.0-linux-arm64.zip"
      sha256 "57263c085c4ed0ee2ecbf96e5ccd3054d50463fa843505ed29422566bcc4d38b"
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
