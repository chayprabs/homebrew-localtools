class LocaltoolsSubtitleConverter < Formula
  desc "Convert, inspect and re-time subtitles; extract, add or burn captions into video"
  homepage "https://tools.chaitanyaprabuddha.com/subtitle-converter"
  version "1.0.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/subtitle-converter-v1.0.6/subtitle-converter-1.0.6-macos-arm64.zip"
      sha256 "7676990064009c06a247d958962692115cfcea52a60b6f2eb0fe232de91e4260"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/subtitle-converter-v1.0.6/subtitle-converter-1.0.6-macos-x64.zip"
      sha256 "28a0e7dbb81982c47907e7c767bbb4fae1fe0bd5d2b1ae0323d47738b7fddb49"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/subtitle-converter-v1.0.6/subtitle-converter-1.0.6-linux-x64.zip"
      sha256 "b7fc4c4888a3d12d4665b8a70276c4a999ba3a15a47f85ae0c8fe1c18d554713"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/subtitle-converter-v1.0.6/subtitle-converter-1.0.6-linux-arm64.zip"
      sha256 "aadef55a37d52a3dcaf6471ec4a62a60215620240b9b3025ca43175994c6ba3a"
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
