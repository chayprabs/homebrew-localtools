class LocaltoolsCsvJsonTransform < Formula
  desc "Convert and transform CSV, TSV, JSON and JSONL with Miller verbs: filter, sort, join, reshape"
  homepage "https://tools.chaitanyaprabuddha.com/csv-json-transform"
  version "1.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/csv-json-transform-v1.0.3/csv-json-transform-1.0.3-macos-arm64.zip"
      sha256 "364b619ce3fa0880a9ebfacd8dda77dba2bf942245b034959475c8c5b654197c"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/csv-json-transform-v1.0.3/csv-json-transform-1.0.3-macos-x64.zip"
      sha256 "50364e04a65a2a7e51b0e7a6c873f7fa06bb6b2e9f075639a6e0501937e399ce"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/csv-json-transform-v1.0.3/csv-json-transform-1.0.3-linux-x64.zip"
      sha256 "99e96a916b055cb7aec0554ed92cee428fc9bafbf397acacc6f9d2a86b076a6b"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/csv-json-transform-v1.0.3/csv-json-transform-1.0.3-linux-arm64.zip"
      sha256 "5defd9404a259f21db3e3f05b460448f18027fa0d60a514a8f55245d74b9d5fd"
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
