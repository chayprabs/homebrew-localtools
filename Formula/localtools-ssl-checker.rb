class LocaltoolsSslChecker < Formula
  desc "Check a domain's TLS certificate chain, expiry, supported protocols, DNSSEC and CAA records"
  homepage "https://tools.chaitanyaprabuddha.com/ssl-checker"
  version "1.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/ssl-checker-v1.0.1/ssl-checker-1.0.1-macos-arm64.zip"
      sha256 "04456aa6d66a9a8fda77ee8a401f080a3505ffad17ff56035fd68c9ad0b44db5"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/ssl-checker-v1.0.1/ssl-checker-1.0.1-macos-x64.zip"
      sha256 "3e48cb69b142992721d67541133eae471ce11439c509dd525aeab51323ccec89"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/ssl-checker-v1.0.1/ssl-checker-1.0.1-linux-x64.zip"
      sha256 "0a6ce4b6612763f716c740f1bc02744aad320e122b062c7dc33f8549905eb9cb"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/ssl-checker-v1.0.1/ssl-checker-1.0.1-linux-arm64.zip"
      sha256 "268ed5e3044bef0de70f7b13a6a7205f052e56350801cfaec896e40d8c5fd231"
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
