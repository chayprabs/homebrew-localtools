class LocaltoolsTerraformPlanViewer < Formula
  desc "Review terraform or OpenTofu plan JSON offline: destructive changes first, attribute diffs, blast radius, drift and risk flags"
  homepage "https://tools.chaitanyaprabuddha.com/terraform-plan-viewer"
  version "1.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/terraform-plan-viewer-v1.0.2/terraform-plan-viewer-1.0.2-macos-arm64.zip"
      sha256 "1acee41c20a129274c44953790aa5b5fc9af15bea4a748a50d8b105b4d47783b"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/terraform-plan-viewer-v1.0.2/terraform-plan-viewer-1.0.2-macos-x64.zip"
      sha256 "a5d0c75b8cc64c630e86cc58747b5d2c9fe08ec9c4f4fcd2283b60ee4b22e754"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/terraform-plan-viewer-v1.0.2/terraform-plan-viewer-1.0.2-linux-x64.zip"
      sha256 "a74f17a0a1a7246f26851d76b7eb65218a4ae4029f54c0260b0e4393f7a2af08"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/terraform-plan-viewer-v1.0.2/terraform-plan-viewer-1.0.2-linux-arm64.zip"
      sha256 "40a5e233485d20b9a08f5b18cb3d11aa47f985339a2f8b3a2789aee89eaec64f"
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
