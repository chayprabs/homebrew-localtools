class LocaltoolsYamlJsonQuery < Formula
  desc "Query and edit YAML, JSON, XML, TOML and INI with yq expressions and apply RFC 6902 JSON Patch, keeping comments"
  homepage "https://tools.chaitanyaprabuddha.com/yaml-json-query"
  version "1.0.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/yaml-json-query-v1.0.4/yaml-json-query-1.0.4-macos-arm64.zip"
      sha256 "01f4bc968e0f10a1f752acf73be454a1d7197070a963bfb3f4ccc654ec7ad7d8"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/yaml-json-query-v1.0.4/yaml-json-query-1.0.4-macos-x64.zip"
      sha256 "005bcc996fc285938eca04c3de0779b511488b367edeb32b2c05b439807191ea"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/yaml-json-query-v1.0.4/yaml-json-query-1.0.4-linux-x64.zip"
      sha256 "e4cf56d4d2759d23c587ba819870da64290feb824c14feec642ca380c88749b6"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/yaml-json-query-v1.0.4/yaml-json-query-1.0.4-linux-arm64.zip"
      sha256 "446e37b9b8eb07c53c6e36fdf1dfe466c2758a5f4b20d7d72ce22ccd873f3971"
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
