class LocaltoolsHtmlExtractor < Formula
  desc "Extract data from HTML pages with CSS selectors into JSON or CSV"
  homepage "https://tools.chaitanyaprabuddha.com/html-extractor"
  version "1.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/html-extractor-v1.0.1/html-extractor-1.0.1-macos-arm64.zip"
      sha256 "1891fe509363887aa93f34251a7ce8120243a7a7500373f3257eddcc63733af6"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/html-extractor-v1.0.1/html-extractor-1.0.1-macos-x64.zip"
      sha256 "878305f3577098a2aab40da0a2c9c78986faced37d10032c9f25a7a406392518"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/html-extractor-v1.0.1/html-extractor-1.0.1-linux-x64.zip"
      sha256 "fa8d9aa94e948e1963b83f5888ec84e7b8fd62d53c79314fb8a80936a1b6f9e0"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/html-extractor-v1.0.1/html-extractor-1.0.1-linux-arm64.zip"
      sha256 "3d45e894498b426bf1d8f8e01106c9d60f916791d9278cab4a08fed22917a018"
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
