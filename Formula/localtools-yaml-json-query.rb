class LocaltoolsYamlJsonQuery < Formula
  desc "Query and edit YAML, JSON, XML, TOML and INI with yq expressions and apply RFC 6902 JSON Patch, keeping comments"
  homepage "https://tools.chaitanyaprabuddha.com/yaml-json-query"
  version "1.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/yaml-json-query-v1.0.1/yaml-json-query-1.0.1-macos-arm64.zip"
      sha256 "69a2eed1c4db4d452815ca8695091123385529788a6e11c7a5ed2fa2bf05f186"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/yaml-json-query-v1.0.1/yaml-json-query-1.0.1-macos-x64.zip"
      sha256 "1beeea3d098679b79d738be50176f0ca6acb2c7dfbad9d3808c088cdc025cfd3"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/yaml-json-query-v1.0.1/yaml-json-query-1.0.1-linux-x64.zip"
      sha256 "f99d368c2fe6d55a08555fbdbcaa7398a9bc7cc216eba0847a2c5c3c314e1b83"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/yaml-json-query-v1.0.1/yaml-json-query-1.0.1-linux-arm64.zip"
      sha256 "36eec688ee631cde0750b6ba42fae2cfcbf7daccd13e6ddfd4c35b9c92483ee0"
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
