class LocaltoolsCsvJsonTransform < Formula
  desc "Convert and transform CSV, TSV, JSON and JSONL with Miller verbs: filter, sort, join, reshape"
  homepage "https://tools.chaitanyaprabuddha.com/csv-json-transform"
  version "1.0.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/csv-json-transform-v1.0.4/csv-json-transform-1.0.4-macos-arm64.zip"
      sha256 "7d31ed23183637951fe375cd1ff1fb86c2f2962b55d6749f24bce908e32a365b"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/csv-json-transform-v1.0.4/csv-json-transform-1.0.4-macos-x64.zip"
      sha256 "244665ce739adc314075717b52100c9045661292b7ac1a604b5c0b2d0a2c0c5e"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/csv-json-transform-v1.0.4/csv-json-transform-1.0.4-linux-x64.zip"
      sha256 "6ae1618c8f36686f88a2197e8755b6b904f9aa0b31f3036948dd7c722fb8b0c1"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/csv-json-transform-v1.0.4/csv-json-transform-1.0.4-linux-arm64.zip"
      sha256 "edd9290cdf2d88d504baefdce7d1224685880c6f2efa0b5c2875b16f0c1db7c7"
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
