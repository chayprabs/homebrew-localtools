class LocaltoolsGrokDebugger < Formula
  desc "Test grok patterns against log lines with the full Logstash pattern library and highlighted matches"
  homepage "https://tools.chaitanyaprabuddha.com/grok-debugger"
  version "1.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/grok-debugger-v1.0.3/grok-debugger-1.0.3-macos-arm64.zip"
      sha256 "6d428ccebf04e2ee492003f6b072fe0712ed52557bb50120952f116581df4e47"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/grok-debugger-v1.0.3/grok-debugger-1.0.3-macos-x64.zip"
      sha256 "55320365d4dc2c00651345666f7ff6a5cf773f26b65ba71dc7d9c5920be0c02e"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/grok-debugger-v1.0.3/grok-debugger-1.0.3-linux-x64.zip"
      sha256 "6e1b801180a4d0f6a99382a2f6221fc7aefe0fd6d9102ea49e008017ebb0c5c1"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/grok-debugger-v1.0.3/grok-debugger-1.0.3-linux-arm64.zip"
      sha256 "907352f83282afd807d814d5bc1aa224ac90d49cfd37fe57fb51f91abae7b6d6"
    end
  end

  def install
    libexec.install Dir["*"]
    chmod 0755, libexec/"localtools-grok-debugger"
    bin.install_symlink libexec/"localtools-grok-debugger"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/localtools-grok-debugger --version")
  end
end
