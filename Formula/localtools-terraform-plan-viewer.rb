class LocaltoolsTerraformPlanViewer < Formula
  desc "Review terraform or OpenTofu plan JSON offline: destructive changes first, attribute diffs, blast radius, drift and risk flags"
  homepage "https://tools.chaitanyaprabuddha.com/terraform-plan-viewer"
  version "1.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/terraform-plan-viewer-v1.0.3/terraform-plan-viewer-1.0.3-macos-arm64.zip"
      sha256 "6f9be3d1d28460564b5029c00523689ed7702b41e256057805697bbec5ec7e87"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/terraform-plan-viewer-v1.0.3/terraform-plan-viewer-1.0.3-macos-x64.zip"
      sha256 "2c1c1c713e834c015c4ad377747b071c9efeb39a0220205d5814a7e2b605da1a"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/terraform-plan-viewer-v1.0.3/terraform-plan-viewer-1.0.3-linux-x64.zip"
      sha256 "ac002bdfd61863e75c4b983ed83550ed0f055171301c704a1dc7c5d023550c44"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/terraform-plan-viewer-v1.0.3/terraform-plan-viewer-1.0.3-linux-arm64.zip"
      sha256 "dddb61851abf3a000e0485c7b72e87b54ec4e16ba7d82c371a20eabc39920056"
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
