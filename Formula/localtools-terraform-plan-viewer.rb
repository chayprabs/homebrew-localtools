class LocaltoolsTerraformPlanViewer < Formula
  desc "Review terraform or OpenTofu plan JSON offline: destructive changes first, attribute diffs, blast radius, drift and risk flags"
  homepage "https://tools.chaitanyaprabuddha.com/terraform-plan-viewer"
  version "1.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/terraform-plan-viewer-v1.0.1/terraform-plan-viewer-1.0.1-macos-arm64.zip"
      sha256 "6750da67ae14b068172f2c4b6ebe5035ec171140e2ae43fe43573ade1170f95a"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/terraform-plan-viewer-v1.0.1/terraform-plan-viewer-1.0.1-macos-x64.zip"
      sha256 "b6dcb9e04be4c64855003a17208150f111a2321e5e4a1bba8dbf07bfeceb7b78"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/terraform-plan-viewer-v1.0.1/terraform-plan-viewer-1.0.1-linux-x64.zip"
      sha256 "0a7d007e2d4a42484b34aa46ea5658204447e5714c338949e65459634029ff29"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/terraform-plan-viewer-v1.0.1/terraform-plan-viewer-1.0.1-linux-arm64.zip"
      sha256 "05ea3605c167d131e03b340267135849ed8b3ebdc780a75b08dfb73049443190"
    end
  end

  def install
    libexec.install Dir["*"]
    chmod 0755, libexec/"localtools-terraform-plan-viewer"
    bin.install_symlink libexec/"localtools-terraform-plan-viewer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/localtools-terraform-plan-viewer --version")
  end
end
