class LocaltoolsArchiveInspector < Formula
  desc "List and inspect nested zip, tar, 7z, rar, gz, xz and zst archives and flag zip bombs and path traversal"
  homepage "https://tools.chaitanyaprabuddha.com/archive-inspector"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/archive-inspector-v1.0.0/archive-inspector-1.0.0-macos-arm64.zip"
      sha256 "e18153bb3411ca7d249b6d51cdbb473e6715f3ba20c4bd56b5f67c23e8fc33c3"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/archive-inspector-v1.0.0/archive-inspector-1.0.0-macos-x64.zip"
      sha256 "716032e6b85268c9c810fd266395e800185042c67fabe23172cc9cb336f53cc6"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/archive-inspector-v1.0.0/archive-inspector-1.0.0-linux-x64.zip"
      sha256 "d99866c57806ebc41950e5222ea487367c4044fe5ce0b6c9d3847848fa25a9e3"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/archive-inspector-v1.0.0/archive-inspector-1.0.0-linux-arm64.zip"
      sha256 "0ca74256143ab91bd3614f34eba183a8e7d5a83cafe4e71954ee87f8333f86de"
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
