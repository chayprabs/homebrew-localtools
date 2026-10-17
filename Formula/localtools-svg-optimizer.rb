class LocaltoolsSvgOptimizer < Formula
  desc "Optimize and minify SVG files with SVGO and export them to PNG"
  homepage "https://tools.chaitanyaprabuddha.com/svg-optimizer"
  version "1.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/svg-optimizer-v1.0.2/svg-optimizer-1.0.2-macos-arm64.zip"
      sha256 "bc1f5afcf1258fd78449a09845ff616d9cc42169eadb08bdc78322ea597b1293"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/svg-optimizer-v1.0.2/svg-optimizer-1.0.2-macos-x64.zip"
      sha256 "cbe66c7d883770d43e87f493e3d31116f9c3a4db7856c9f1d3eafae6ad9d9ee7"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/svg-optimizer-v1.0.2/svg-optimizer-1.0.2-linux-x64.zip"
      sha256 "119b6e202140407b715eab749b4ea1d3c74cb8399d8cea1544eafd458388f3e2"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/svg-optimizer-v1.0.2/svg-optimizer-1.0.2-linux-arm64.zip"
      sha256 "0355f720b991576772e776aa629aa2be7ef462c7a9aba38453197320531429ed"
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
