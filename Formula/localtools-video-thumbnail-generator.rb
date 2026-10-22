class LocaltoolsVideoThumbnailGenerator < Formula
  desc "Generate thumbnails, frame grids and contact sheets from video files with ffmpeg"
  homepage "https://tools.chaitanyaprabuddha.com/video-thumbnail-generator"
  version "1.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/video-thumbnail-generator-v1.0.1/video-thumbnail-generator-1.0.1-macos-arm64.zip"
      sha256 "c559e2fb753a5c758b5c9e4f9dc2fabc4d1236c59fdb0c90dde7d017b9e9bb9a"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/video-thumbnail-generator-v1.0.1/video-thumbnail-generator-1.0.1-macos-x64.zip"
      sha256 "94ac7edc8a182b8f232f55844f944b34db42697d186d4c56836d4bcb45dcc2c5"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/video-thumbnail-generator-v1.0.1/video-thumbnail-generator-1.0.1-linux-x64.zip"
      sha256 "e3cd2d3a1046f6a67723d6384a053b655a05d26b2e952c7039f9d42e1d8bb44c"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/video-thumbnail-generator-v1.0.1/video-thumbnail-generator-1.0.1-linux-arm64.zip"
      sha256 "ae100b89fe297675d731b700d1e43de4aa89bd50d29840338565170f603e7913"
    end
  end

  def install
    libexec.install Dir["*"]
    chmod 0755, libexec/"localtools-video-thumbnail-generator"
    bin.install_symlink libexec/"localtools-video-thumbnail-generator"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/localtools-video-thumbnail-generator --version")
  end
end
