class LocaltoolsExifRemover < Formula
  desc "Inspect and remove metadata from JPEG, PNG, TIFF and WebP images; download clean copies and a remaining-tags report"
  homepage "https://tools.chaitanyaprabuddha.com/exif-remover"
  version "1.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/exif-remover-v1.0.2/exif-remover-1.0.2-macos-arm64.zip"
      sha256 "3e43e652f773e349ccd440aa37b8e810a6e965d7a888965bc900b3eaca39ff84"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/exif-remover-v1.0.2/exif-remover-1.0.2-macos-x64.zip"
      sha256 "7fdb59b7559f9384e82b736e920fb9bd4db7f962a54c41365e8888aa3f7868e4"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/exif-remover-v1.0.2/exif-remover-1.0.2-linux-x64.zip"
      sha256 "f4b7d6548fa8c32602a7ca0ccacb9218200f9379e829823b342452867aae394c"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/exif-remover-v1.0.2/exif-remover-1.0.2-linux-arm64.zip"
      sha256 "a52c5b5e4bd4764efcac84b5de8c3b0e624a22a09bbc3fde09c8225dcfe5abe9"
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
