class LocaltoolsAsciidocConverter < Formula
  desc "Convert AsciiDoc documents and projects to self-contained HTML5, DocBook 5 or Markdown with Asciidoctor, offline"
  homepage "https://tools.chaitanyaprabuddha.com/asciidoc-converter"
  version "1.0.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/asciidoc-converter-v1.0.4/asciidoc-converter-1.0.4-macos-arm64.zip"
      sha256 "c0d69eb6dcae7129da4ef17028d86fe2713b7808e06958afccfc6902ccc29313"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/asciidoc-converter-v1.0.4/asciidoc-converter-1.0.4-macos-x64.zip"
      sha256 "b90a89abcea6c03a7eeb042a5b01d95eb331124f602995c0ebb8d9efa5226f61"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/asciidoc-converter-v1.0.4/asciidoc-converter-1.0.4-linux-x64.zip"
      sha256 "7516d0c1b774f70b932ca5e144d1aee976d639647dea417335a8f246ac947725"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/asciidoc-converter-v1.0.4/asciidoc-converter-1.0.4-linux-arm64.zip"
      sha256 "37d7f9050582e6b988dc462ce0a49e09a8b88af8502cbb34057e90ad96704c85"
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
