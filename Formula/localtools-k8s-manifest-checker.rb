class LocaltoolsK8sManifestChecker < Formula
  desc "Score Kubernetes YAML and Helm-rendered manifests for production readiness and security, with a fix snippet per finding"
  homepage "https://tools.chaitanyaprabuddha.com/k8s-manifest-checker"
  version "1.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/k8s-manifest-checker-v1.0.2/k8s-manifest-checker-1.0.2-macos-arm64.zip"
      sha256 "1e173d98770d230493804174f013e0de1bd315b13812d5c231b767163302fe60"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/k8s-manifest-checker-v1.0.2/k8s-manifest-checker-1.0.2-macos-x64.zip"
      sha256 "a9f50aaa5c1b70bd4afab1f6d107db24997539c2e976feac8fab96ec494b85ee"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/k8s-manifest-checker-v1.0.2/k8s-manifest-checker-1.0.2-linux-x64.zip"
      sha256 "e82ef17b1b28b3126fa66425d6cf0ac41f73e11934096a4ebe02d7231d25fee1"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/k8s-manifest-checker-v1.0.2/k8s-manifest-checker-1.0.2-linux-arm64.zip"
      sha256 "96ab88f0549706c6328efc24b53d9189aac1f170b284fd651d961bd0cf879a92"
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
