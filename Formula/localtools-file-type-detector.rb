class LocaltoolsFileTypeDetector < Formula
  desc "Detect real file types from magic bytes and flag extension/MIME mismatches, macros and polyglot files across folders"
  homepage "https://tools.chaitanyaprabuddha.com/file-type-detector"
  version "1.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/file-type-detector-v1.0.2/file-type-detector-1.0.2-macos-arm64.zip"
      sha256 "713f369de2f155d80a16768503fb9155a8c44aca03a143f01c42c46b37aca11e"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/file-type-detector-v1.0.2/file-type-detector-1.0.2-macos-x64.zip"
      sha256 "9afa1e3cb73e2ae18c55da80acf56843956f4a7906b450f61ac038d4e8590efc"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/file-type-detector-v1.0.2/file-type-detector-1.0.2-linux-x64.zip"
      sha256 "e699414b5a10ea82afe17d6ca882ab31677e3d591aa49eb66667a1c6a75605bb"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/file-type-detector-v1.0.2/file-type-detector-1.0.2-linux-arm64.zip"
      sha256 "1e75076b645be2e3d034775d2797aa88cd9772af58cf8654b2a6689717d40f27"
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
