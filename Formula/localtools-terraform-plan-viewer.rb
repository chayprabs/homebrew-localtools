class LocaltoolsTerraformPlanViewer < Formula
  desc "Review terraform or OpenTofu plan JSON offline: destructive changes first, attribute diffs, blast radius, drift and risk flags"
  homepage "https://tools.chaitanyaprabuddha.com/terraform-plan-viewer"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/terraform-plan-viewer-v1.0.0/terraform-plan-viewer-1.0.0-macos-arm64.zip"
      sha256 "01b04dcbe50295557437d3257745272bbcbce9a8b94ea44907ce40f3ebf8f1a8"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/terraform-plan-viewer-v1.0.0/terraform-plan-viewer-1.0.0-macos-x64.zip"
      sha256 "4df29a07df3f49031c860e2d6d979a2e5337c2f752915bb8e7d4051536fdb85b"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/terraform-plan-viewer-v1.0.0/terraform-plan-viewer-1.0.0-linux-x64.zip"
      sha256 "38d01bb50a44e665deac7d11d8541cc6e4a97707b6d3654087ae9c79b545960f"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/terraform-plan-viewer-v1.0.0/terraform-plan-viewer-1.0.0-linux-arm64.zip"
      sha256 "6ab7dd8f228a4c2a70ce6fb62d057e02aa8166817e8dfca6e21817d261ef360a"
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
