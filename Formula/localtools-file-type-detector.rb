class LocaltoolsFileTypeDetector < Formula
  desc "Detect real file types from magic bytes and flag extension/MIME mismatches, macros and polyglot files across folders"
  homepage "https://tools.chaitanyaprabuddha.com/file-type-detector"
  version "1.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/file-type-detector-v1.0.1/file-type-detector-1.0.1-macos-arm64.zip"
      sha256 "5e12e8caa0b7c219d7db607036323eef1587c3ea6d01af1461941b96f54e64aa"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/file-type-detector-v1.0.1/file-type-detector-1.0.1-macos-x64.zip"
      sha256 "8693956c258a81d2283d03f383da5e715104bac35618f5fba5fce4e98e3c4dd2"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/file-type-detector-v1.0.1/file-type-detector-1.0.1-linux-x64.zip"
      sha256 "137ebfa75f6b5b2906fecf76bc3e87af88236cd4ae39eeef5145689d1b9d67e3"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/file-type-detector-v1.0.1/file-type-detector-1.0.1-linux-arm64.zip"
      sha256 "020b9393a2db4d7d787543c057ddae76303a0ac91cdec503b756918eae5f8065"
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
