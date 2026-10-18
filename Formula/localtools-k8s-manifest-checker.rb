class LocaltoolsK8sManifestChecker < Formula
  desc "Score Kubernetes YAML and Helm-rendered manifests for production readiness and security, with a fix snippet per finding"
  homepage "https://tools.chaitanyaprabuddha.com/k8s-manifest-checker"
  version "1.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/k8s-manifest-checker-v1.0.1/k8s-manifest-checker-1.0.1-macos-arm64.zip"
      sha256 "f9c0ebeae2b632ab90bc38e9b7c96dac9a6aa1d5d1bdebb5980ff29446afbbd2"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/k8s-manifest-checker-v1.0.1/k8s-manifest-checker-1.0.1-macos-x64.zip"
      sha256 "bf137f7a23649be927849515068d6b119f78024cac1656ebf7d76abdce8a7545"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/k8s-manifest-checker-v1.0.1/k8s-manifest-checker-1.0.1-linux-x64.zip"
      sha256 "52ed5e48afa89d8f607984ed8d34fb794fac325f3c53b06df975d73b0cd7d3ec"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/k8s-manifest-checker-v1.0.1/k8s-manifest-checker-1.0.1-linux-arm64.zip"
      sha256 "76b443f7675393a834e4cccad99a5cdec2664dff6492c71391421549ef93ad97"
    end
  end

  def install
    libexec.install Dir["*"]
    chmod 0755, libexec/"localtools-k8s-manifest-checker"
    bin.install_symlink libexec/"localtools-k8s-manifest-checker"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/localtools-k8s-manifest-checker --version")
  end
end
