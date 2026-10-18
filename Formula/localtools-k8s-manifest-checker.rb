class LocaltoolsK8sManifestChecker < Formula
  desc "Score Kubernetes YAML and Helm-rendered manifests for production readiness and security, with a fix snippet per finding"
  homepage "https://tools.chaitanyaprabuddha.com/k8s-manifest-checker"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/k8s-manifest-checker-v1.0.0/k8s-manifest-checker-1.0.0-macos-arm64.zip"
      sha256 "a7fea03c9cd278c9e5cc0bfe7f75c36061a92dc777f1747beca64a206cae7c70"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/k8s-manifest-checker-v1.0.0/k8s-manifest-checker-1.0.0-macos-x64.zip"
      sha256 "57921885b8e56429d15b503bacf38d79a83c8799b2d901a8398daf0f4c91dae6"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/k8s-manifest-checker-v1.0.0/k8s-manifest-checker-1.0.0-linux-x64.zip"
      sha256 "5c09f0e52bb36effde665190085b15e5efb35c3c16adb51f2f8c392db0ad52c2"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/k8s-manifest-checker-v1.0.0/k8s-manifest-checker-1.0.0-linux-arm64.zip"
      sha256 "1945b83ee4c48322a8f968a9deb6de0e1b612e5263691bef684c318de7a9e121"
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
