class LocaltoolsSubtitleConverter < Formula
  desc "Convert, inspect and re-time subtitles; extract, add or burn captions into video"
  homepage "https://tools.chaitanyaprabuddha.com/subtitle-converter"
  version "1.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/subtitle-converter-v1.0.3/subtitle-converter-1.0.3-macos-arm64.zip"
      sha256 "f17facb907f14b4195c451b567f3bfb16c486dcd9f59256bd2decfa072f587b3"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/subtitle-converter-v1.0.3/subtitle-converter-1.0.3-macos-x64.zip"
      sha256 "3f4bc8ae9991bd9c13df9ee34f31b592f59788cbf69d5120a89f5a4956192d28"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/subtitle-converter-v1.0.3/subtitle-converter-1.0.3-linux-x64.zip"
      sha256 "bb106ca01980d301f982082f810c741cc340991112cc4bb60bbaf18cf5228d7f"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/subtitle-converter-v1.0.3/subtitle-converter-1.0.3-linux-arm64.zip"
      sha256 "9d5bfad029e92cdea5ae5ece6647045442c3ee2e6bccee4e630b65102ffc15d6"
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
