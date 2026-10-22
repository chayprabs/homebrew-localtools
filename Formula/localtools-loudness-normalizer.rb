class LocaltoolsLoudnessNormalizer < Formula
  desc "Normalize audio loudness to EBU R128 / LUFS targets with two-pass ffmpeg loudnorm"
  homepage "https://tools.chaitanyaprabuddha.com/loudness-normalizer"
  version "1.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/loudness-normalizer-v1.0.2/loudness-normalizer-1.0.2-macos-arm64.zip"
      sha256 "0c40fb2096371d96b34efcfc366a38df11e7cb185a5d5fc8d37f68c7296f5565"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/loudness-normalizer-v1.0.2/loudness-normalizer-1.0.2-macos-x64.zip"
      sha256 "27ba71ccb4a97dd444db73bcd279dc3c557b0dc11aa54ba0f63c6d88df4fe9e8"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/loudness-normalizer-v1.0.2/loudness-normalizer-1.0.2-linux-x64.zip"
      sha256 "f3a7eae38ae3d9f0b886caa11b39b198c2fdc012c51818a3784e1964273b251b"
    end
  end

  def install
    libexec.install Dir["*"]
    chmod 0755, libexec/"localtools-loudness-normalizer"
    bin.install_symlink libexec/"localtools-loudness-normalizer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/localtools-loudness-normalizer --version")
  end
end
