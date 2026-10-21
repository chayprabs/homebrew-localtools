class LocaltoolsDocxCompare < Formula
  desc "Compare two Word documents and produce a tracked-changes redline .docx"
  homepage "https://tools.chaitanyaprabuddha.com/docx-compare"
  version "1.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/docx-compare-v1.0.3/docx-compare-1.0.3-macos-arm64.zip"
      sha256 "a5406ef53726e033b58bd31534155411c632ab876d023be06296476e2d3e0a34"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/docx-compare-v1.0.3/docx-compare-1.0.3-macos-x64.zip"
      sha256 "f25a1bcd2dedb1bab76056909f3abc245d2c6a136a5d905c47dfed42f66969e8"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/docx-compare-v1.0.3/docx-compare-1.0.3-linux-x64.zip"
      sha256 "b305d5ffdf08208be80037c9094622df5ccd636ac830e231108bddd19d86a57e"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/docx-compare-v1.0.3/docx-compare-1.0.3-linux-arm64.zip"
      sha256 "32ffe80b89a1cd773683334af444ef05f9ba20db7b361ca6f1ea2068066df29c"
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
