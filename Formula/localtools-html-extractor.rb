class LocaltoolsHtmlExtractor < Formula
  desc "Extract data from HTML pages with CSS selectors into JSON or CSV"
  homepage "https://tools.chaitanyaprabuddha.com/html-extractor"
  version "1.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/html-extractor-v1.0.3/html-extractor-1.0.3-macos-arm64.zip"
      sha256 "5b4ac5263730ec563c99077d0d686445d8034c848f2e04a5b2407dd0e5ed754d"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/html-extractor-v1.0.3/html-extractor-1.0.3-macos-x64.zip"
      sha256 "faacea0f641a1be6171495076033ede1a954c8c9d0fa8827e5d5ae5494486057"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/html-extractor-v1.0.3/html-extractor-1.0.3-linux-x64.zip"
      sha256 "cdc75e5b9032c7b279b762b2307b23900142363614728735dcc4daf7a85a460b"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/html-extractor-v1.0.3/html-extractor-1.0.3-linux-arm64.zip"
      sha256 "3d8f93905564ed6c43eca37d8c26d1aef6c05c4e42de46dea9d86ed5c2866671"
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
