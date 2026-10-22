class LocaltoolsLatexToSvg < Formula
  desc "Render LaTeX, MathML or AsciiMath to SVG, PNG and MathML with speech alt text, offline with MathJax"
  homepage "https://tools.chaitanyaprabuddha.com/latex-to-svg"
  version "1.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/latex-to-svg-v1.0.3/latex-to-svg-1.0.3-macos-arm64.zip"
      sha256 "fa6662cd3b94ef2121831402428334e96bb235bbb8346de430f19924ae3d7af6"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/latex-to-svg-v1.0.3/latex-to-svg-1.0.3-macos-x64.zip"
      sha256 "c6289b18da89e3382a20abf9b7aad2d7e9df1733f88cd14b1dade1a8c00f2b16"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/latex-to-svg-v1.0.3/latex-to-svg-1.0.3-linux-x64.zip"
      sha256 "b7d42d148f6c03b5dfa1f4d9df2678f50d67c80ddb167d4c200ba44ad777d800"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/latex-to-svg-v1.0.3/latex-to-svg-1.0.3-linux-arm64.zip"
      sha256 "e2f0453a84ea96e8c819ccaf366722a266196696b4fd9ffe44dd9a815ae7420c"
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
