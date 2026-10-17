class LocaltoolsHtmlExtractor < Formula
  desc "Extract data from HTML pages with CSS selectors into JSON or CSV"
  homepage "https://tools.chaitanyaprabuddha.com/html-extractor"
  version "1.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/html-extractor-v1.0.2/html-extractor-1.0.2-macos-arm64.zip"
      sha256 "892213a0a5054a50138fabe81095209c92b224a58d5286ce1ce340fa87cc56d6"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/html-extractor-v1.0.2/html-extractor-1.0.2-macos-x64.zip"
      sha256 "037211ef638a8e0d6f8f0e71a41f95101940b827217c3d8d674e0ee94f42b1c9"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/html-extractor-v1.0.2/html-extractor-1.0.2-linux-x64.zip"
      sha256 "ef7bef3a7a841f66c54869363559abe65a560bee2103420c98ac874dd383693e"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/html-extractor-v1.0.2/html-extractor-1.0.2-linux-arm64.zip"
      sha256 "bd2673ab765796aef4cba27d1cdf8479c07843adef44e1ecf12c8c24feb9435a"
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
