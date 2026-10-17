class LocaltoolsCsvJsonTransform < Formula
  desc "Convert and transform CSV, TSV, JSON and JSONL with Miller verbs: filter, sort, join, reshape"
  homepage "https://tools.chaitanyaprabuddha.com/csv-json-transform"
  version "1.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/csv-json-transform-v1.0.1/csv-json-transform-1.0.1-macos-arm64.zip"
      sha256 "389fbd82ed43981ad66086cb9f9a846dac62f97df4687b10554950f35b02109a"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/csv-json-transform-v1.0.1/csv-json-transform-1.0.1-macos-x64.zip"
      sha256 "0b63dfdaa2a7d7f7ce44057d7fc890b010377e2f56f1165305c1eb927d2b4e04"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/csv-json-transform-v1.0.1/csv-json-transform-1.0.1-linux-x64.zip"
      sha256 "5fb8c63395e16e72f4dc0a4831baa1d0f3aebd98977f15c58f0dd7c752607ef6"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/csv-json-transform-v1.0.1/csv-json-transform-1.0.1-linux-arm64.zip"
      sha256 "0c756afb73efbe01dc9805b9de2dd75bd2beed77d68fe1d1497bbea811d873e4"
    end
  end

  def install
    libexec.install Dir["*"]
    chmod 0755, libexec/"localtools-csv-json-transform"
    bin.install_symlink libexec/"localtools-csv-json-transform"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/localtools-csv-json-transform --version")
  end
end
