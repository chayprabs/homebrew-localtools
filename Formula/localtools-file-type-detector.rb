class LocaltoolsFileTypeDetector < Formula
  desc "Detect real file types from magic bytes and flag extension/MIME mismatches, macros and polyglot files across folders"
  homepage "https://tools.chaitanyaprabuddha.com/file-type-detector"
  version "1.0.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/file-type-detector-v1.0.4/file-type-detector-1.0.4-macos-arm64.zip"
      sha256 "cffce5fe13a653ee170375b2ac25f9abc2ae4281fe573580c881136fca28690b"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/file-type-detector-v1.0.4/file-type-detector-1.0.4-macos-x64.zip"
      sha256 "284f5b34053ba7c8c71bd6be86a4fb3c5b72e27b70715122fc9081734bc2f96d"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/file-type-detector-v1.0.4/file-type-detector-1.0.4-linux-x64.zip"
      sha256 "e08d40ab188da67a8f5fd7a8d735422b0f93b008cc5ee8f2885bbab76380d8a1"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/file-type-detector-v1.0.4/file-type-detector-1.0.4-linux-arm64.zip"
      sha256 "059ae1ab88a6002a73d4aad6134b800916320c1ec139b54ccdd3670683252d95"
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
