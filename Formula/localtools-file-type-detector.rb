class LocaltoolsFileTypeDetector < Formula
  desc "Detect real file types from magic bytes and flag extension/MIME mismatches, macros and polyglot files across folders"
  homepage "https://tools.chaitanyaprabuddha.com/file-type-detector"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/file-type-detector-v1.0.0/file-type-detector-1.0.0-macos-arm64.zip"
      sha256 "0d6ee4749ef2106041f329dc08de122b3b4c0f6cc9ce21f30248ae633099fe64"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/file-type-detector-v1.0.0/file-type-detector-1.0.0-macos-x64.zip"
      sha256 "69671ccb4b04601121b60dbe86511a06d52b1f159c18102d474cce6f92efe4c6"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/file-type-detector-v1.0.0/file-type-detector-1.0.0-linux-x64.zip"
      sha256 "2d601ba20dd99410dcd378e18185e4ba2415a7569a5541ef1ea8169c35b3fecc"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/file-type-detector-v1.0.0/file-type-detector-1.0.0-linux-arm64.zip"
      sha256 "a6a2c04df92dd99cfdb036e6ea9858be2e6a9ebb01a8037d0850d8be89aaaf6f"
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
