class LocaltoolsAsciidocConverter < Formula
  desc "Convert AsciiDoc documents and projects to self-contained HTML5, DocBook 5 or Markdown with Asciidoctor, offline"
  homepage "https://tools.chaitanyaprabuddha.com/asciidoc-converter"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/asciidoc-converter-v1.0.0/asciidoc-converter-1.0.0-macos-arm64.zip"
      sha256 "65a98f32e6c8ea74eb30d69975758eff6fed7589c4b65ed1a9d5934d2648f2cf"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/asciidoc-converter-v1.0.0/asciidoc-converter-1.0.0-macos-x64.zip"
      sha256 "582f544ce760680bf45e75538a653afd754bf70460f987fda278ebda8cbfe1da"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/asciidoc-converter-v1.0.0/asciidoc-converter-1.0.0-linux-x64.zip"
      sha256 "19d1291476d3eec0aae95ae17080144707953bf7f098e91300f30f64c1a6d83b"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/asciidoc-converter-v1.0.0/asciidoc-converter-1.0.0-linux-arm64.zip"
      sha256 "7d91e6d9eed0985fad8b20ec407cae38963e09414f99d1aa10bd913def82271b"
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
