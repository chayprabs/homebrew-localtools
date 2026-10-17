class LocaltoolsSslChecker < Formula
  desc "Check a domain's TLS certificate chain, expiry, supported protocols, DNSSEC and CAA records"
  homepage "https://tools.chaitanyaprabuddha.com/ssl-checker"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/ssl-checker-v1.0.0/ssl-checker-1.0.0-macos-arm64.zip"
      sha256 "14c4840f970392e1cf4a7609ca59aaa585889a8bb63b3b06de62ad58b6d504e0"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/ssl-checker-v1.0.0/ssl-checker-1.0.0-macos-x64.zip"
      sha256 "54f93d18b8685eab87af2ff8d2c258cdffb3bd3f33c42cbb134b00bac1364c14"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/ssl-checker-v1.0.0/ssl-checker-1.0.0-linux-x64.zip"
      sha256 "d1c74dbe52433e4b8b29fb155285647cffde07fef18491b0c270e8b15997e729"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/ssl-checker-v1.0.0/ssl-checker-1.0.0-linux-arm64.zip"
      sha256 "7e7addca42bb28b3e63d7a17589387719a207a0eee55e95c5ed7aa9d49c59b68"
    end
  end

  def install
    libexec.install Dir["*"]
    chmod 0755, libexec/"localtools-ssl-checker"
    bin.install_symlink libexec/"localtools-ssl-checker"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/localtools-ssl-checker --version")
  end
end
