class LocaltoolsArchiveInspector < Formula
  desc "List and inspect nested zip, tar, 7z, rar, gz, xz and zst archives and flag zip bombs and path traversal"
  homepage "https://tools.chaitanyaprabuddha.com/archive-inspector"
  version "1.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/archive-inspector-v1.0.2/archive-inspector-1.0.2-macos-arm64.zip"
      sha256 "207bf9736dafbd66ed0cc870034771beabb56335283f37b4041d3139d246bf22"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/archive-inspector-v1.0.2/archive-inspector-1.0.2-macos-x64.zip"
      sha256 "e0a9bbcd2b987e3304843cae0e3626169eeb44745a7ddb52f63138ce1b3bd753"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/archive-inspector-v1.0.2/archive-inspector-1.0.2-linux-x64.zip"
      sha256 "429be05469a907f07a75fd8703b6fa5e1429024aac461ed50674fb9c4532057f"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/archive-inspector-v1.0.2/archive-inspector-1.0.2-linux-arm64.zip"
      sha256 "d0a7884cce01ed2da526ee24429329f82929354383059a05ff4fb9392ad2f2a5"
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
