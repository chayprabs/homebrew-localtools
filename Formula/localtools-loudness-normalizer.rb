class LocaltoolsLoudnessNormalizer < Formula
  desc "Normalize audio loudness to EBU R128 / LUFS targets with two-pass ffmpeg loudnorm"
  homepage "https://tools.chaitanyaprabuddha.com/loudness-normalizer"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/loudness-normalizer-v1.0.0/loudness-normalizer-1.0.0-macos-arm64.zip"
      sha256 "e8f446b77dee82f60ae07d53acbc67493dad61944492617bd6c8888f3ce96538"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/loudness-normalizer-v1.0.0/loudness-normalizer-1.0.0-macos-x64.zip"
      sha256 "41392419e6c51920bcac0da5ba3ed2267bc35d7165ac79e32f0aa66fc9e095eb"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/loudness-normalizer-v1.0.0/loudness-normalizer-1.0.0-linux-x64.zip"
      sha256 "c34d419a9a3bd8b3caa4ac13aea938164d766f3eaeebd5b3d00ab4051d4a582e"
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
