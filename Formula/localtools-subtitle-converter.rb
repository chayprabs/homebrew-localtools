class LocaltoolsSubtitleConverter < Formula
  desc "Convert, inspect and re-time subtitles; extract, add or burn captions into video"
  homepage "https://tools.chaitanyaprabuddha.com/subtitle-converter"
  version "1.0.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/subtitle-converter-v1.0.5/subtitle-converter-1.0.5-macos-arm64.zip"
      sha256 "b561318cf47d7dea1d85795248bf77dec70d4325c8ede08f5096c7f6c7786588"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/subtitle-converter-v1.0.5/subtitle-converter-1.0.5-macos-x64.zip"
      sha256 "8e75659c0282198878aa2c14549126b64895e8356b0a485cc10169e1922ef54a"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/subtitle-converter-v1.0.5/subtitle-converter-1.0.5-linux-x64.zip"
      sha256 "c10a23a0ab8b99a497e9a44cee67c08f395fffb0e511fec3120c37678d872301"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/subtitle-converter-v1.0.5/subtitle-converter-1.0.5-linux-arm64.zip"
      sha256 "0eea67b27b269e1f5c098b20ff9d0ecf456ceaed331e9fda460e76523558c5be"
    end
  end

  def install
    libexec.install Dir["*"]
    chmod 0755, libexec/"localtools-subtitle-converter"
    bin.install_symlink libexec/"localtools-subtitle-converter"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/localtools-subtitle-converter --version")
  end
end
