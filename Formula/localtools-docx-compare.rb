class LocaltoolsDocxCompare < Formula
  desc "Compare two Word documents and produce a tracked-changes redline .docx"
  homepage "https://tools.chaitanyaprabuddha.com/docx-compare"
  version "1.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/docx-compare-v1.0.1/docx-compare-1.0.1-macos-arm64.zip"
      sha256 "d759f090ac45585dc71ec41d1ae46bf63b21ac5545de5dd2690ebb9d92708cba"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/docx-compare-v1.0.1/docx-compare-1.0.1-macos-x64.zip"
      sha256 "bb3ee748f8158dc30ea882cd2a571dabf11e3c0c3a3d56899e56d04ce5ee09de"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/docx-compare-v1.0.1/docx-compare-1.0.1-linux-x64.zip"
      sha256 "2dddc62b7b1282c7e541e26418049329f48bc20c6693ccd92ba1e1ec57d42386"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/docx-compare-v1.0.1/docx-compare-1.0.1-linux-arm64.zip"
      sha256 "30a7bf227fb85a2736adbb316f28fa073ab74a2405603c648cf4ff84ea57933d"
    end
  end

  def install
    libexec.install Dir["*"]
    chmod 0755, libexec/"localtools-docx-compare"
    bin.install_symlink libexec/"localtools-docx-compare"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/localtools-docx-compare --version")
  end
end
