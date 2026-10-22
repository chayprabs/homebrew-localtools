class LocaltoolsSvgOptimizer < Formula
  desc "Optimize and minify SVG files with SVGO and export them to PNG"
  homepage "https://tools.chaitanyaprabuddha.com/svg-optimizer"
  version "1.0.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/svg-optimizer-v1.0.4/svg-optimizer-1.0.4-macos-arm64.zip"
      sha256 "58956128ee1bdb9024b3dc0123d6fa52f8c95eaeec573a801f852a2f79d7c244"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/svg-optimizer-v1.0.4/svg-optimizer-1.0.4-macos-x64.zip"
      sha256 "2648d30f9bacad7d3953ba7fd8c952118f9a63aa2d582eaccc88730edcabfc02"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/svg-optimizer-v1.0.4/svg-optimizer-1.0.4-linux-x64.zip"
      sha256 "b582ed39b40dbf47cdd16a8c0f8de48902ad21b46fa13a361a68fcd3d44e1350"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/svg-optimizer-v1.0.4/svg-optimizer-1.0.4-linux-arm64.zip"
      sha256 "cb2981b4056736c2d495420de7e4ae492c09371f51067c7bb03dfd8da16ba5e7"
    end
  end

  def install
    libexec.install Dir["*"]
    chmod 0755, libexec/"localtools-svg-optimizer"
    bin.install_symlink libexec/"localtools-svg-optimizer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/localtools-svg-optimizer --version")
  end
end
