class LocaltoolsTypstEditor < Formula
  desc "Write Typst documents with live preview and export them to PDF, PNG or SVG"
  homepage "https://tools.chaitanyaprabuddha.com/typst-editor"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/typst-editor-v1.0.0/typst-editor-1.0.0-macos-arm64.zip"
      sha256 "5f61522a52a4686c5cf5813e081238841eb077325f2ffae641e2534df0cf5afc"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/typst-editor-v1.0.0/typst-editor-1.0.0-macos-x64.zip"
      sha256 "0de2416e639cf9cff204691431e3b75852acde8c5692e8dd92562d16ee2a2088"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/typst-editor-v1.0.0/typst-editor-1.0.0-linux-x64.zip"
      sha256 "b5067c1b50279a2c5ffde80fea9cd11a77d2503a3dff8abbefdcfb695bd599ab"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/typst-editor-v1.0.0/typst-editor-1.0.0-linux-arm64.zip"
      sha256 "09fb2c503aca5efb20973a1dfa1555ccdca05423999afec9a1e10cabd40d20a5"
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
