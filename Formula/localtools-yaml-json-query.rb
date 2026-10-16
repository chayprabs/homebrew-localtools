class LocaltoolsYamlJsonQuery < Formula
  desc "Query and edit YAML, JSON, XML, TOML and INI with yq expressions and apply RFC 6902 JSON Patch, keeping comments"
  homepage "https://tools.chaitanyaprabuddha.com/yaml-json-query"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/yaml-json-query-v1.0.0/yaml-json-query-1.0.0-macos-arm64.zip"
      sha256 "a37e96294d17769f66af75a459858628e807807500fd0c6956cdcccb4d8ad113"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/yaml-json-query-v1.0.0/yaml-json-query-1.0.0-macos-x64.zip"
      sha256 "0692f1967d41aebd162e5ba6e76b2b48c58bdf609a9ecfca9e75f2f0da4e3b9d"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/yaml-json-query-v1.0.0/yaml-json-query-1.0.0-linux-x64.zip"
      sha256 "000dac4da0837082407bd625ba4fb6d0de03137fe9fe53cb8a7224e2652cb17c"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/yaml-json-query-v1.0.0/yaml-json-query-1.0.0-linux-arm64.zip"
      sha256 "1cfb8d57c975086ec9ba09e5b7be330368e4f7e5f538bf624c59ff6973e603d3"
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
