class LocaltoolsSubtitleConverter < Formula
  desc "Convert, inspect and re-time subtitles; extract, add or burn captions into video"
  homepage "https://tools.chaitanyaprabuddha.com/subtitle-converter"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/subtitle-converter-v1.0.0/subtitle-converter-1.0.0-macos-arm64.zip"
      sha256 "36b6c0e3ebdfa52571721484235b9cf90487203da0afa5ab9768f47223b7bfa2"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/subtitle-converter-v1.0.0/subtitle-converter-1.0.0-macos-x64.zip"
      sha256 "0fe352b0440568a9870f12bb245560d4959210774f58563a97e40daba1e7f0aa"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/subtitle-converter-v1.0.0/subtitle-converter-1.0.0-linux-x64.zip"
      sha256 "b1a13a2479b5319b919a648bbd2829e4c6866964398c32376a2bde85c8ed20c8"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/subtitle-converter-v1.0.0/subtitle-converter-1.0.0-linux-arm64.zip"
      sha256 "13babe81977fd3b38690db861647372c3fce56991b693ccb249ab337ab54b079"
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
