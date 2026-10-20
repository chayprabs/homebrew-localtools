class LocaltoolsDocxCompare < Formula
  desc "Compare two Word documents and produce a tracked-changes redline .docx"
  homepage "https://tools.chaitanyaprabuddha.com/docx-compare"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/docx-compare-v1.0.0/docx-compare-1.0.0-macos-arm64.zip"
      sha256 "4bd20787860b040fd6c85dc78ab09b5a5d421a11efd7356e76282c6256504924"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/docx-compare-v1.0.0/docx-compare-1.0.0-macos-x64.zip"
      sha256 "db430b3eab1b7fb182d24845742cacdd9afb8d1deab1149a7baba3d26e2a54db"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/docx-compare-v1.0.0/docx-compare-1.0.0-linux-x64.zip"
      sha256 "f98b746d4a95343a80a2731b077e9964892ff0a17a5c6077b0c14b862cda0983"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/docx-compare-v1.0.0/docx-compare-1.0.0-linux-arm64.zip"
      sha256 "16090290f6c7a533a7096781a471bcdf06ca31b251c931d95eca693a7ca835a0"
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
