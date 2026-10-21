class LocaltoolsDocxCompare < Formula
  desc "Compare two Word documents and produce a tracked-changes redline .docx"
  homepage "https://tools.chaitanyaprabuddha.com/docx-compare"
  version "1.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/docx-compare-v1.0.2/docx-compare-1.0.2-macos-arm64.zip"
      sha256 "f3569292255402c9c8a9e1f142d7050edb4ee43ee350410ab7f57aac8e604560"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/docx-compare-v1.0.2/docx-compare-1.0.2-macos-x64.zip"
      sha256 "b4fa421f858d4569653e45d2a299f24ad581bdd0917da177bc2a8586f37296f1"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/docx-compare-v1.0.2/docx-compare-1.0.2-linux-x64.zip"
      sha256 "afcc33889c55af5562608b330addb606036f7929598c3e1d4e2a74b60b9eae5a"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/docx-compare-v1.0.2/docx-compare-1.0.2-linux-arm64.zip"
      sha256 "c06363e03ad514f80f169cd053f63ab9b445013ba137869f397cc4c6583c3c18"
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
