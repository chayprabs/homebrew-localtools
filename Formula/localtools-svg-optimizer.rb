class LocaltoolsSvgOptimizer < Formula
  desc "Optimize and minify SVG files with SVGO and export them to PNG"
  homepage "https://tools.chaitanyaprabuddha.com/svg-optimizer"
  version "1.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/svg-optimizer-v1.0.1/svg-optimizer-1.0.1-macos-arm64.zip"
      sha256 "8feccf00aeb2943e1cab18cb89feabfa183e7127c4dff5c9324757d8a4a851b0"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/svg-optimizer-v1.0.1/svg-optimizer-1.0.1-macos-x64.zip"
      sha256 "52864f1ea6ca863e71484a6d587c6941a5aa04de416133562d703700aa9d5468"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/svg-optimizer-v1.0.1/svg-optimizer-1.0.1-linux-x64.zip"
      sha256 "7e2deb303ef44abc3f7b05b180b6a9c97de631d264859e8b6d2880e1292646aa"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/svg-optimizer-v1.0.1/svg-optimizer-1.0.1-linux-arm64.zip"
      sha256 "e17087cbe17210c66bdd01cfbb04eb98ba972fcc9cda2bc68d48bb9a58fb7572"
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
