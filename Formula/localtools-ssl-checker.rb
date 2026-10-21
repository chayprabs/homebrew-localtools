class LocaltoolsSslChecker < Formula
  desc "Check a domain's TLS certificate chain, expiry, supported protocols, DNSSEC and CAA records"
  homepage "https://tools.chaitanyaprabuddha.com/ssl-checker"
  version "1.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/ssl-checker-v1.0.2/ssl-checker-1.0.2-macos-arm64.zip"
      sha256 "be53304f2eae875505a57ae7ca3b4a6f9090dfdde1e6b242c609900b7de331aa"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/ssl-checker-v1.0.2/ssl-checker-1.0.2-macos-x64.zip"
      sha256 "bc204613cb8ae98e024eed4916211ab379c2718b211700f91e4224a1621c416e"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/ssl-checker-v1.0.2/ssl-checker-1.0.2-linux-x64.zip"
      sha256 "50cc8f71f352271e13fb30892908faae2fce913da8dd6d201c21c1894bb8cda9"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/ssl-checker-v1.0.2/ssl-checker-1.0.2-linux-arm64.zip"
      sha256 "f9997f861bb4a79a8474e08ab4bd102b03388c5b44635ee4dcaeb765c83fd95c"
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
