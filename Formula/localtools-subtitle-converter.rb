class LocaltoolsSubtitleConverter < Formula
  desc "Convert, inspect and re-time subtitles; extract, add or burn captions into video"
  homepage "https://tools.chaitanyaprabuddha.com/subtitle-converter"
  version "1.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/subtitle-converter-v1.0.1/subtitle-converter-1.0.1-macos-arm64.zip"
      sha256 "50b6194e44a47cc17d9b758796f70cb60062fd046c2b6165be6aff9f0578622f"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/subtitle-converter-v1.0.1/subtitle-converter-1.0.1-macos-x64.zip"
      sha256 "b0da65b2d0408ff7dea49209fba68eb878d2b949107dc25757706d36a6ab14b9"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/subtitle-converter-v1.0.1/subtitle-converter-1.0.1-linux-x64.zip"
      sha256 "4fee503f80a04aedb4c180f8d3662491cf0b94f2ebb24e45e538ecb1122570de"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/subtitle-converter-v1.0.1/subtitle-converter-1.0.1-linux-arm64.zip"
      sha256 "2ad13047116235633eafc1b217b6a9bf2d7a394ad21b39fabb287254dcd2a2cf"
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
