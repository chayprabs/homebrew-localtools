class LocaltoolsExifRemover < Formula
  desc "Inspect and remove metadata from JPEG, PNG, TIFF and WebP images; download clean copies and a remaining-tags report"
  homepage "https://tools.chaitanyaprabuddha.com/exif-remover"
  version "1.0.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/exif-remover-v1.0.4/exif-remover-1.0.4-macos-arm64.zip"
      sha256 "e86908ac985f98c5bd57759ab0290fe1d2a06b9487db5035ab4b78f8dadb7402"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/exif-remover-v1.0.4/exif-remover-1.0.4-macos-x64.zip"
      sha256 "f90d87ce7d8287709a978c732e4ca26f5355cc2c5478a58318546788114bef25"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/exif-remover-v1.0.4/exif-remover-1.0.4-linux-x64.zip"
      sha256 "451a6478e459b0e2a779e034dde0bc12915e8b3c8c3d442e910209c43a3a9cf9"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/exif-remover-v1.0.4/exif-remover-1.0.4-linux-arm64.zip"
      sha256 "89226f21c9fb966ff5f4696fcb49093fff850f1b9de6fa19e8e7409efaeb78a0"
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
