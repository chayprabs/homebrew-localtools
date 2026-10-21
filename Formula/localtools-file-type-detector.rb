class LocaltoolsFileTypeDetector < Formula
  desc "Detect real file types from magic bytes and flag extension/MIME mismatches, macros and polyglot files across folders"
  homepage "https://tools.chaitanyaprabuddha.com/file-type-detector"
  version "1.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/file-type-detector-v1.0.3/file-type-detector-1.0.3-macos-arm64.zip"
      sha256 "82e71e89bb6f2f0c87372acafc511cbe192f57d7d2fa52bc2f2d3ec05d0e587d"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/file-type-detector-v1.0.3/file-type-detector-1.0.3-macos-x64.zip"
      sha256 "e0b4fd531940724715f141bc39fbeddd1766905f333cf3407d22bc0630b2a867"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/file-type-detector-v1.0.3/file-type-detector-1.0.3-linux-x64.zip"
      sha256 "5b6cbd593676229c6b45b6ee70c6bfcf76afc80303bb5df09b4331808e5f8f1c"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/file-type-detector-v1.0.3/file-type-detector-1.0.3-linux-arm64.zip"
      sha256 "8163f54f86a917789ffefde4ccaacef23d8505dd3158723634a1941ebf397c2c"
    end
  end

  def install
    libexec.install Dir["*"]
    chmod 0755, libexec/"localtools-file-type-detector"
    bin.install_symlink libexec/"localtools-file-type-detector"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/localtools-file-type-detector --version")
  end
end
