class LocaltoolsExifRemover < Formula
  desc "Inspect and remove metadata from JPEG, PNG, TIFF and WebP images; download clean copies and a remaining-tags report"
  homepage "https://tools.chaitanyaprabuddha.com/exif-remover"
  version "1.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/exif-remover-v1.0.1/exif-remover-1.0.1-macos-arm64.zip"
      sha256 "6ae2195a6c4a731de15ad202fc67874c62e8af95f53c832f656640e98e18656f"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/exif-remover-v1.0.1/exif-remover-1.0.1-macos-x64.zip"
      sha256 "062e3a2a8bdca33e3678f99e1d6d88fb11ca4c85ac740bc849e475f0550b78b8"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/exif-remover-v1.0.1/exif-remover-1.0.1-linux-x64.zip"
      sha256 "eeff76e11bd098c6db98b052fb6ffb7a9b5459dbd8038489586a8ff9a7a6f50d"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/exif-remover-v1.0.1/exif-remover-1.0.1-linux-arm64.zip"
      sha256 "ce6486ebae38a473aab74adb7be412f999dd436acac6dfa6d7e9076848cd5eb8"
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
