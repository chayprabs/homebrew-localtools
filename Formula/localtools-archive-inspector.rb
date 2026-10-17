class LocaltoolsArchiveInspector < Formula
  desc "List and inspect nested zip, tar, 7z, rar, gz, xz and zst archives and flag zip bombs and path traversal"
  homepage "https://tools.chaitanyaprabuddha.com/archive-inspector"
  version "1.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/archive-inspector-v1.0.1/archive-inspector-1.0.1-macos-arm64.zip"
      sha256 "51114d8b7dd53df918f729f1081b897a0afde6709fb450005f1847283a69c821"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/archive-inspector-v1.0.1/archive-inspector-1.0.1-macos-x64.zip"
      sha256 "0ec244964d58ff6e5661bd5ea10d52dab6437b38f06e1b510b8f8fe5ba4ed535"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/archive-inspector-v1.0.1/archive-inspector-1.0.1-linux-x64.zip"
      sha256 "abb2d05a0d00a677e60b1faa67b60ed837900f96450258dd35490362b8624963"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/archive-inspector-v1.0.1/archive-inspector-1.0.1-linux-arm64.zip"
      sha256 "64d52876764ef66c2a04795560d16e5c60a6bca626924bad33831dd14006f1ae"
    end
  end

  def install
    libexec.install Dir["*"]
    chmod 0755, libexec/"localtools-archive-inspector"
    bin.install_symlink libexec/"localtools-archive-inspector"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/localtools-archive-inspector --version")
  end
end
