class LocaltoolsHtmlExtractor < Formula
  desc "Extract data from HTML pages with CSS selectors into JSON or CSV"
  homepage "https://tools.chaitanyaprabuddha.com/html-extractor"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/html-extractor-v1.0.0/html-extractor-1.0.0-macos-arm64.zip"
      sha256 "b60df601b6e7a245632e4bd055451d0a86fd3128b2135d0bc04a56baadab9773"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/html-extractor-v1.0.0/html-extractor-1.0.0-macos-x64.zip"
      sha256 "7deb89cf1535c68843a6a713e2bacdfa855c3b0b9cc4ce5bf37b372dc27366a3"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/html-extractor-v1.0.0/html-extractor-1.0.0-linux-x64.zip"
      sha256 "974484711e9f38a3acb21bda35cb01fd79b12c7c7c9cf4078ea9ab948e6c961b"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/html-extractor-v1.0.0/html-extractor-1.0.0-linux-arm64.zip"
      sha256 "b71bc445fc215abc9eb3f052fad872a2a4f69fcb54babd9b1a3e12294dfca37a"
    end
  end

  def install
    libexec.install Dir["*"]
    chmod 0755, libexec/"localtools-html-extractor"
    bin.install_symlink libexec/"localtools-html-extractor"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/localtools-html-extractor --version")
  end
end
