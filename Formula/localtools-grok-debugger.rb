class LocaltoolsGrokDebugger < Formula
  desc "Test grok patterns against log lines with the full Logstash pattern library and highlighted matches"
  homepage "https://tools.chaitanyaprabuddha.com/grok-debugger"
  version "1.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/grok-debugger-v1.0.1/grok-debugger-1.0.1-macos-arm64.zip"
      sha256 "ee5f79ac36326e7ee28b911bb29d571fb0815f008c49502f47975bbdc6be43e4"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/grok-debugger-v1.0.1/grok-debugger-1.0.1-macos-x64.zip"
      sha256 "93682cfa22dbe4bf9678ac73b62486ed077e48a158318df02cdf4d2ecf0f94b6"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/grok-debugger-v1.0.1/grok-debugger-1.0.1-linux-x64.zip"
      sha256 "53eebb6b7c627de2e6556939314debcc1063226a55739c79ead69287e1e9e034"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/grok-debugger-v1.0.1/grok-debugger-1.0.1-linux-arm64.zip"
      sha256 "d0a2d34a01b765a798cce56f9f3ef7826d3167d950f477b7972ae5c056186b9f"
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
