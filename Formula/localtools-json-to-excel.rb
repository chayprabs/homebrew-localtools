class LocaltoolsJsonToExcel < Formula
  desc "Convert JSON or JSONL into formatted .xlsx workbooks with typed columns and multiple sheets"
  homepage "https://tools.chaitanyaprabuddha.com/json-to-excel"
  version "1.0.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/json-to-excel-v1.0.5/json-to-excel-1.0.5-macos-arm64.zip"
      sha256 "f14fbad5c4dfe41dac6bc5065b899ec8dd028a99842890056196e4a7a7087dc9"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/json-to-excel-v1.0.5/json-to-excel-1.0.5-macos-x64.zip"
      sha256 "06658bf2fadbfc8e813378bc24b24e729d3f0390b184a22bb419cfa63b54543f"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/json-to-excel-v1.0.5/json-to-excel-1.0.5-linux-x64.zip"
      sha256 "c607f4cbcd262ee6f72adf485656f1019b9f71a7edab5d39805db7153f8b8c03"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/json-to-excel-v1.0.5/json-to-excel-1.0.5-linux-arm64.zip"
      sha256 "bcee0282f4b6f104cc7f00ade13281cc39543824f9a7ac67f6f0b64d4721b464"
    end
  end

  def install
    libexec.install Dir["*"]
    chmod 0755, libexec/"localtools-json-to-excel"
    bin.install_symlink libexec/"localtools-json-to-excel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/localtools-json-to-excel --version")
  end
end
