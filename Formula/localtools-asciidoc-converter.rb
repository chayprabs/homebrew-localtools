class LocaltoolsAsciidocConverter < Formula
  desc "Convert AsciiDoc documents and projects to self-contained HTML5, DocBook 5 or Markdown with Asciidoctor, offline"
  homepage "https://tools.chaitanyaprabuddha.com/asciidoc-converter"
  version "1.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/asciidoc-converter-v1.0.2/asciidoc-converter-1.0.2-macos-arm64.zip"
      sha256 "28f972b16305672670bf4177daf1964686c703ac557dd9ee2b2fc526ad0d7a91"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/asciidoc-converter-v1.0.2/asciidoc-converter-1.0.2-macos-x64.zip"
      sha256 "b15785091437e42387d11009f9e61ad29198dcac19e565961018909cb9a01942"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/asciidoc-converter-v1.0.2/asciidoc-converter-1.0.2-linux-x64.zip"
      sha256 "a48bc74bcd231aa4b6c1efc2d5af7437ffe931da0a4a8bd67b0aee8f8bf12573"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/asciidoc-converter-v1.0.2/asciidoc-converter-1.0.2-linux-arm64.zip"
      sha256 "c3bb7fcaf1ce47eac95e1afb95f12646e866718c61c23c3c8758af02e9c09da6"
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
