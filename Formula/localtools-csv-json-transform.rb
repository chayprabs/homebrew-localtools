class LocaltoolsCsvJsonTransform < Formula
  desc "Convert and transform CSV, TSV, JSON and JSONL with Miller verbs: filter, sort, join, reshape"
  homepage "https://tools.chaitanyaprabuddha.com/csv-json-transform"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/csv-json-transform-v1.0.0/csv-json-transform-1.0.0-macos-arm64.zip"
      sha256 "53d4d014ae52c3b38ea9bc0d53432e3fbdfbb8c17d5a4762db8ef6c84d0b63a9"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/csv-json-transform-v1.0.0/csv-json-transform-1.0.0-macos-x64.zip"
      sha256 "b8d5103062b9f6a837bca2a1deca3d91aaa6dfa49cae7149902b689cd5e3a7fd"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/csv-json-transform-v1.0.0/csv-json-transform-1.0.0-linux-x64.zip"
      sha256 "6bc0b1d2f201ed9345038726d436b6a169352bf15eb451bb8f2986aeaff7acae"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/csv-json-transform-v1.0.0/csv-json-transform-1.0.0-linux-arm64.zip"
      sha256 "49988ad208ceb97f44fc2d95d9ebd7620e1c90f6072bea64bfbf04f28f0db752"
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
