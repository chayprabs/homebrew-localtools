class LocaltoolsYamlJsonQuery < Formula
  desc "Query and edit YAML, JSON, XML, TOML and INI with yq expressions and apply RFC 6902 JSON Patch, keeping comments"
  homepage "https://tools.chaitanyaprabuddha.com/yaml-json-query"
  version "1.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/yaml-json-query-v1.0.2/yaml-json-query-1.0.2-macos-arm64.zip"
      sha256 "e08bec8f5155add24f73c5dd33fd517ad8fca0bd26dcb87a5735e168dc742278"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/yaml-json-query-v1.0.2/yaml-json-query-1.0.2-macos-x64.zip"
      sha256 "0c5e934a2f5e314d4e5cb3c2fc676617ba1a8c50f851dc4561dbb95bfebe7f89"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/yaml-json-query-v1.0.2/yaml-json-query-1.0.2-linux-x64.zip"
      sha256 "0321689ae948d74e63b65a5a9a532d7a25aa56f96f17d255aecf63a40f4283fb"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/yaml-json-query-v1.0.2/yaml-json-query-1.0.2-linux-arm64.zip"
      sha256 "8fc1244f2c295075247e84e0d6a6c47c5df14394237bfbd7239f0f6af4b3f505"
    end
  end

  def install
    libexec.install Dir["*"]
    chmod 0755, libexec/"localtools-yaml-json-query"
    bin.install_symlink libexec/"localtools-yaml-json-query"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/localtools-yaml-json-query --version")
  end
end
