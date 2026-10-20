class LocaltoolsAsciidocConverter < Formula
  desc "Convert AsciiDoc documents and projects to self-contained HTML5, DocBook 5 or Markdown with Asciidoctor, offline"
  homepage "https://tools.chaitanyaprabuddha.com/asciidoc-converter"
  version "1.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/asciidoc-converter-v1.0.1/asciidoc-converter-1.0.1-macos-arm64.zip"
      sha256 "2202d21774fb767d71a7550d8ae88c86ad34aab9f2b834c1dd72fea8bd39e4d3"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/asciidoc-converter-v1.0.1/asciidoc-converter-1.0.1-macos-x64.zip"
      sha256 "c9180c0100ca0b58b9482be43c355db5fd020f780e80ed609cd9c26cda190ccb"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/asciidoc-converter-v1.0.1/asciidoc-converter-1.0.1-linux-x64.zip"
      sha256 "9687668d6885a418f277892b2e98c91a4e1a9eb6f9c9acf63814aad244a379c1"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/asciidoc-converter-v1.0.1/asciidoc-converter-1.0.1-linux-arm64.zip"
      sha256 "b50b4a8ea424958cb8a577b50854838756a185ce6db5a1f161014639dd92382f"
    end
  end

  def install
    libexec.install Dir["*"]
    chmod 0755, libexec/"localtools-asciidoc-converter"
    bin.install_symlink libexec/"localtools-asciidoc-converter"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/localtools-asciidoc-converter --version")
  end
end
