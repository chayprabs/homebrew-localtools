class LocaltoolsSvgOptimizer < Formula
  desc "Optimize and minify SVG files with SVGO and export them to PNG"
  homepage "https://tools.chaitanyaprabuddha.com/svg-optimizer"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/svg-optimizer-v1.0.0/svg-optimizer-1.0.0-macos-arm64.zip"
      sha256 "5c8e87f6f7cdb114463ceef45f2302c19784ee6fe917088850a20afb9963095c"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/svg-optimizer-v1.0.0/svg-optimizer-1.0.0-macos-x64.zip"
      sha256 "43dedb8f515506d78b21ca6572fca14f6643af82d85e572064d8eede3198f5e5"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/svg-optimizer-v1.0.0/svg-optimizer-1.0.0-linux-x64.zip"
      sha256 "fb7a4a80a3d82e78dadb293da371bf426160c24edebc7b2ffe7a850c074d4b4e"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/svg-optimizer-v1.0.0/svg-optimizer-1.0.0-linux-arm64.zip"
      sha256 "cca6513d6ed182333ffacba3c8cc82df16f7f0ad141f3215203d03092eb55fbb"
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
