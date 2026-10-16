class LocaltoolsJsonToExcel < Formula
  desc "Convert JSON or JSONL into formatted .xlsx workbooks with typed columns and multiple sheets"
  homepage "https://tools.chaitanyaprabuddha.com/json-to-excel"
  version "1.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/json-to-excel-v1.0.2/json-to-excel-1.0.2-macos-arm64.zip"
      sha256 "270e2c014cd7c16729739a642b249d8fc5341d7f535039dff926511aa07bb119"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/json-to-excel-v1.0.2/json-to-excel-1.0.2-macos-x64.zip"
      sha256 "6fb0ad4d59e3cfe78800fb814eed2ffbd1f299014de11229f7cd0a854444ffb2"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/json-to-excel-v1.0.2/json-to-excel-1.0.2-linux-x64.zip"
      sha256 "65a21a62820c034d3fbeeec85ad9abb44089d0d2ae71bcfef2a9508b52c96bd0"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/json-to-excel-v1.0.2/json-to-excel-1.0.2-linux-arm64.zip"
      sha256 "bc91692e839afa52c335a90f41a2b02ff905591f6ec749fb34f3eb75d22049d3"
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
