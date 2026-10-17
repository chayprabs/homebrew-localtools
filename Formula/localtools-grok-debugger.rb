class LocaltoolsGrokDebugger < Formula
  desc "Test grok patterns against log lines with the full Logstash pattern library and highlighted matches"
  homepage "https://tools.chaitanyaprabuddha.com/grok-debugger"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/grok-debugger-v1.0.0/grok-debugger-1.0.0-macos-arm64.zip"
      sha256 "692532be052444c7a23f3a46ed9918d150adceea2b58b4a07f1580332a11a111"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/grok-debugger-v1.0.0/grok-debugger-1.0.0-macos-x64.zip"
      sha256 "2d193dc54910c9652734d8fab550748191e966e9d61a9bfb40099f13ebc7d284"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/grok-debugger-v1.0.0/grok-debugger-1.0.0-linux-x64.zip"
      sha256 "4fc2690ebd48ddfd77d9bfd6d9a8ebb3fd8ecb77da2d7bc6b5cf6ec4895e06be"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/grok-debugger-v1.0.0/grok-debugger-1.0.0-linux-arm64.zip"
      sha256 "433c108baf90eb77813cdf01c201da191fc4d002f21a09e633740643d46f73d1"
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
