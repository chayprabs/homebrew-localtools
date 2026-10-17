class LocaltoolsCsvJsonTransform < Formula
  desc "Convert and transform CSV, TSV, JSON and JSONL with Miller verbs: filter, sort, join, reshape"
  homepage "https://tools.chaitanyaprabuddha.com/csv-json-transform"
  version "1.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/csv-json-transform-v1.0.2/csv-json-transform-1.0.2-macos-arm64.zip"
      sha256 "f483c80bf0212af32cf9a8fa2ed02d9c7e08e1e6180cdef5044b2f7fba9b7037"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/csv-json-transform-v1.0.2/csv-json-transform-1.0.2-macos-x64.zip"
      sha256 "00ae91f05f2d2ec127b47adcb5fe4142262561655c0c383a0459b4787f949e61"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/csv-json-transform-v1.0.2/csv-json-transform-1.0.2-linux-x64.zip"
      sha256 "1e46f27252fe6d7863d14d4db1fdef16fd8b026cb39603da9d62f2295afa3a80"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/csv-json-transform-v1.0.2/csv-json-transform-1.0.2-linux-arm64.zip"
      sha256 "bf51715e58dd94e13379aa203c05fab95ccb4d57a9b190660babf7acba2a71b6"
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
