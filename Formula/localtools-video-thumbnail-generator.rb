class LocaltoolsVideoThumbnailGenerator < Formula
  desc "Generate thumbnails, frame grids and contact sheets from video files with ffmpeg"
  homepage "https://tools.chaitanyaprabuddha.com/video-thumbnail-generator"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/video-thumbnail-generator-v1.0.0/video-thumbnail-generator-1.0.0-macos-arm64.zip"
      sha256 "ec9583c84e223315bbde762a4b8e3da19039e710154a1cba0562c624b4b335d8"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/video-thumbnail-generator-v1.0.0/video-thumbnail-generator-1.0.0-macos-x64.zip"
      sha256 "35fb9e099a5938a9f8c9fdc9c8489a8d5926b8b7fb9f3c89de2f1f289b64de8f"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/video-thumbnail-generator-v1.0.0/video-thumbnail-generator-1.0.0-linux-x64.zip"
      sha256 "6c78ede0412da6dc3081915d1bc337586f30417412b812d673c7d74ef975ff12"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/video-thumbnail-generator-v1.0.0/video-thumbnail-generator-1.0.0-linux-arm64.zip"
      sha256 "a89620e8b4c69dfaa23a638fe5246b64d3a9cfca4728d752fd365653f9597c8c"
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
