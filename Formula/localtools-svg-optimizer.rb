class LocaltoolsSvgOptimizer < Formula
  desc "Optimize and minify SVG files with SVGO and export them to PNG"
  homepage "https://tools.chaitanyaprabuddha.com/svg-optimizer"
  version "1.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/svg-optimizer-v1.0.3/svg-optimizer-1.0.3-macos-arm64.zip"
      sha256 "83249d359aefdf9a8841ddb3954bb7b45a134335cfbb35c7958d4b10565f9bbe"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/svg-optimizer-v1.0.3/svg-optimizer-1.0.3-macos-x64.zip"
      sha256 "5c082a0e8db79c3441311c285bffbc770dee85e3cd4eeab33a127cecfe6e5e7d"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/svg-optimizer-v1.0.3/svg-optimizer-1.0.3-linux-x64.zip"
      sha256 "4fa8cf3aa4afcf41a339c6bd51f53db61e3a30f88b595c02967d29a835669c9e"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/svg-optimizer-v1.0.3/svg-optimizer-1.0.3-linux-arm64.zip"
      sha256 "cbb6a549b431d0049e25d685ba1fe19869bc02ab1bbb403b73dbfc7f86d7614b"
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
