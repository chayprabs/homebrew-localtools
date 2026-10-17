class LocaltoolsGrokDebugger < Formula
  desc "Test grok patterns against log lines with the full Logstash pattern library and highlighted matches"
  homepage "https://tools.chaitanyaprabuddha.com/grok-debugger"
  version "1.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/grok-debugger-v1.0.2/grok-debugger-1.0.2-macos-arm64.zip"
      sha256 "57ee6cbfb00281adb1d39771138fe04a1964336aa8e7e55a974d7fa3e89185a2"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/grok-debugger-v1.0.2/grok-debugger-1.0.2-macos-x64.zip"
      sha256 "edf1b47a0de1256f15dc48d0a8a99549e4ab0165dff5d06b76960fe33cd68dd5"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/grok-debugger-v1.0.2/grok-debugger-1.0.2-linux-x64.zip"
      sha256 "ae38d8e69ea65044c2cbb95bf8843ebcb3fa76de04271f67b96f95c463f8387f"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/grok-debugger-v1.0.2/grok-debugger-1.0.2-linux-arm64.zip"
      sha256 "144ce071cfe7f7ea2bace51c57aa60ce9a5ed44077f38145b6bdfd840fda8793"
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
