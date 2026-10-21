class LocaltoolsAsciidocConverter < Formula
  desc "Convert AsciiDoc documents and projects to self-contained HTML5, DocBook 5 or Markdown with Asciidoctor, offline"
  homepage "https://tools.chaitanyaprabuddha.com/asciidoc-converter"
  version "1.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/asciidoc-converter-v1.0.3/asciidoc-converter-1.0.3-macos-arm64.zip"
      sha256 "6a6a1c9a6d358df8ff032471b754a9f17bbbd7bcd215d4ec97e8256fe833c612"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/asciidoc-converter-v1.0.3/asciidoc-converter-1.0.3-macos-x64.zip"
      sha256 "cc37062e42895d36d2de562e85bc34133712cf94eb2e67662ffdd2ed4fb3b37b"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/asciidoc-converter-v1.0.3/asciidoc-converter-1.0.3-linux-x64.zip"
      sha256 "6b48909eb70755e819c0e59af2990559a5fdc9b32d5fa9155962e0640af2b0b8"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/asciidoc-converter-v1.0.3/asciidoc-converter-1.0.3-linux-arm64.zip"
      sha256 "35eaba19522977279c2563cb3b908f9a1146f92692efe6dfc965e24f067b9959"
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
