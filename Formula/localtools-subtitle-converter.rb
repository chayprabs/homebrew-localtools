class LocaltoolsSubtitleConverter < Formula
  desc "Convert, inspect and re-time subtitles; extract, add or burn captions into video"
  homepage "https://tools.chaitanyaprabuddha.com/subtitle-converter"
  version "1.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/subtitle-converter-v1.0.2/subtitle-converter-1.0.2-macos-arm64.zip"
      sha256 "8abe26949b4ef70453247e3316d0ad0ab0d35e4123ae9c0d9cc4d91958d251e6"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/subtitle-converter-v1.0.2/subtitle-converter-1.0.2-macos-x64.zip"
      sha256 "912ad0913d43b19798d32939df27b0c4c67573a355fa50899ef83b4c2990f2a7"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/subtitle-converter-v1.0.2/subtitle-converter-1.0.2-linux-x64.zip"
      sha256 "ae6edbc44bcc0e80ce407b706c6d6ecfaa989fec4f1af0f5d7e57dd552ecbd7b"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/subtitle-converter-v1.0.2/subtitle-converter-1.0.2-linux-arm64.zip"
      sha256 "a9b7cb2d25d364e2c2480600512fd8161728a6904ebff3955be47e5eb909c481"
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
