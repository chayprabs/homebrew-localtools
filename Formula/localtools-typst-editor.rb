class LocaltoolsTypstEditor < Formula
  desc "Write Typst documents with live preview and export them to PDF, PNG or SVG"
  homepage "https://tools.chaitanyaprabuddha.com/typst-editor"
  version "1.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/typst-editor-v1.0.2/typst-editor-1.0.2-macos-arm64.zip"
      sha256 "6cf95242f480fb0d0457b6f3cf5e443414b15e4067b53cfe03b3b475f1ac0e20"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/typst-editor-v1.0.2/typst-editor-1.0.2-macos-x64.zip"
      sha256 "2c5eb091549fbb3cc7b2a33b5075e18c9cde363ce48c8a4d9e1fdf45fb6417e7"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/typst-editor-v1.0.2/typst-editor-1.0.2-linux-x64.zip"
      sha256 "bdd5aeec5d1a9e135c659b960420aa61e51ccaadded76c7d18abd79ae952b9a3"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/typst-editor-v1.0.2/typst-editor-1.0.2-linux-arm64.zip"
      sha256 "cae9539017d15087a9b6de1e65982ea9184ce71ba784a9649e9f39206872df29"
    end
  end

  def install
    libexec.install Dir["*"]
    chmod 0755, libexec/"localtools-typst-editor"
    bin.install_symlink libexec/"localtools-typst-editor"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/localtools-typst-editor --version")
  end
end
