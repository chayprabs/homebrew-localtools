class LocaltoolsLatexToSvg < Formula
  desc "Render LaTeX, MathML or AsciiMath to SVG, PNG and MathML with speech alt text, offline with MathJax"
  homepage "https://tools.chaitanyaprabuddha.com/latex-to-svg"
  version "1.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/latex-to-svg-v1.0.1/latex-to-svg-1.0.1-macos-arm64.zip"
      sha256 "23aeed0155f166b4d94dcb617042ca3db9cf7ccfe31477002f8f2f8d191455ca"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/latex-to-svg-v1.0.1/latex-to-svg-1.0.1-macos-x64.zip"
      sha256 "ac1df04c7bad9475a32c6bdb7219ed5e852db9307c55a37e26afd40c242d617f"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/latex-to-svg-v1.0.1/latex-to-svg-1.0.1-linux-x64.zip"
      sha256 "5802e63bc1097309106bf15b291951b7b3120d5c34937499e98303ee433724a4"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/latex-to-svg-v1.0.1/latex-to-svg-1.0.1-linux-arm64.zip"
      sha256 "ca9ae9ad0daf96b41b7a66106a33416afa8ab3a1e83c6613c396c23bce61fe28"
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
