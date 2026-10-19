class LocaltoolsLoudnessNormalizer < Formula
  desc "Normalize audio loudness to EBU R128 / LUFS targets with two-pass ffmpeg loudnorm"
  homepage "https://tools.chaitanyaprabuddha.com/loudness-normalizer"
  version "1.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/loudness-normalizer-v1.0.1/loudness-normalizer-1.0.1-macos-arm64.zip"
      sha256 "b017c358d26d7ebbec205ea35673123935137b572e780567799669216c8581e4"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/loudness-normalizer-v1.0.1/loudness-normalizer-1.0.1-macos-x64.zip"
      sha256 "1273563e4c8732a2983e97055baf2bd9c22cf27c774eed6a6540806cf3947029"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/loudness-normalizer-v1.0.1/loudness-normalizer-1.0.1-linux-x64.zip"
      sha256 "9d729f9463a6fdf0656d8104f0c6a82a6a13dc6b472c5e9275151041da438eb4"
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
