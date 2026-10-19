class LocaltoolsTypstEditor < Formula
  desc "Write Typst documents with live preview and export them to PDF, PNG or SVG"
  homepage "https://tools.chaitanyaprabuddha.com/typst-editor"
  version "1.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/typst-editor-v1.0.1/typst-editor-1.0.1-macos-arm64.zip"
      sha256 "db7269dc4fbbfae54379d632ac6cc4cacd237aec905a04e6c350ee6c1608e239"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/typst-editor-v1.0.1/typst-editor-1.0.1-macos-x64.zip"
      sha256 "768a8519dafc07594540fed7c7a2175850a4a241ee1678ffd94a8a47d865cc5a"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/typst-editor-v1.0.1/typst-editor-1.0.1-linux-x64.zip"
      sha256 "500fc620df5bbd2c5166aa38f51cc5fec7073041184bd3acb7ae4d5520e98e31"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/typst-editor-v1.0.1/typst-editor-1.0.1-linux-arm64.zip"
      sha256 "e666ea19226b268c12697ee8f1daa11844f710c072b76e1db6797e16bf87f02f"
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
