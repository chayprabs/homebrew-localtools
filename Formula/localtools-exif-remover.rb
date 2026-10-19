class LocaltoolsExifRemover < Formula
  desc "Inspect and remove metadata from JPEG, PNG, TIFF and WebP images; download clean copies and a remaining-tags report"
  homepage "https://tools.chaitanyaprabuddha.com/exif-remover"
  version "1.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/exif-remover-v1.0.3/exif-remover-1.0.3-macos-arm64.zip"
      sha256 "b2984779f612f2ab757b9c647d1cf44b7c5d3d68b2a5b3016e709c431ba08dec"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/exif-remover-v1.0.3/exif-remover-1.0.3-macos-x64.zip"
      sha256 "eb8a28f3945e3a2792b4e5712e3844dcdc7672768048e7ce3621dd9fc9860171"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/exif-remover-v1.0.3/exif-remover-1.0.3-linux-x64.zip"
      sha256 "1bde92ec7cff11e00b2d713cd61e8167966a20dfb04b9e53b4831b37ca6219e5"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/exif-remover-v1.0.3/exif-remover-1.0.3-linux-arm64.zip"
      sha256 "a7fbb37b1b2ec24b525e19643ded3e2461900c53e3740569e73d7de83cf1be59"
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
