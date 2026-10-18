class LocaltoolsExifRemover < Formula
  desc "Inspect and remove metadata from JPEG, PNG, TIFF and WebP images; download clean copies and a remaining-tags report"
  homepage "https://tools.chaitanyaprabuddha.com/exif-remover"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/exif-remover-v1.0.0/exif-remover-1.0.0-macos-arm64.zip"
      sha256 "b1418eae30c4b1fc370c1f87734aa84bcf0ba93ed5c9ac6bf16d5a496f211db3"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/exif-remover-v1.0.0/exif-remover-1.0.0-macos-x64.zip"
      sha256 "20d8659147ce5b99e5235e70d447d5a36bd9e6c11375effd3333d346ff3dd52d"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/exif-remover-v1.0.0/exif-remover-1.0.0-linux-x64.zip"
      sha256 "36ec77d503c67e49da83510fb333eb21d81ac44ee4e14185b551b24437149168"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/exif-remover-v1.0.0/exif-remover-1.0.0-linux-arm64.zip"
      sha256 "1b65ea8b529bc4845580bd9841019b44223869cb0c05196b21b64623682e09e4"
    end
  end

  def install
    libexec.install Dir["*"]
    chmod 0755, libexec/"localtools-exif-remover"
    bin.install_symlink libexec/"localtools-exif-remover"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/localtools-exif-remover --version")
  end
end
