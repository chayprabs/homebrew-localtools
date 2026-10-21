class LocaltoolsYamlJsonQuery < Formula
  desc "Query and edit YAML, JSON, XML, TOML and INI with yq expressions and apply RFC 6902 JSON Patch, keeping comments"
  homepage "https://tools.chaitanyaprabuddha.com/yaml-json-query"
  version "1.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/yaml-json-query-v1.0.3/yaml-json-query-1.0.3-macos-arm64.zip"
      sha256 "510fca459c47ed2dcb5c1b1f03b62221dc5bcfc0dd82d9e493aa92a5cb955d3a"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/yaml-json-query-v1.0.3/yaml-json-query-1.0.3-macos-x64.zip"
      sha256 "2f9818512825f6ddc9ca0371765a5d07abea57dcf61fdf2b72de68de0978f222"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/yaml-json-query-v1.0.3/yaml-json-query-1.0.3-linux-x64.zip"
      sha256 "587526e0b97d42ad7795afd57db8b09d5aa0a5d52eb7095f1d6904c1bca14629"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/yaml-json-query-v1.0.3/yaml-json-query-1.0.3-linux-arm64.zip"
      sha256 "3d47a794e5cc3e1a31611b56f70238e18f49521c28ebb827a27db7be8774b676"
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
