class LocaltoolsJsonToExcel < Formula
  desc "Convert JSON or JSONL into formatted .xlsx workbooks with typed columns and multiple sheets"
  homepage "https://tools.chaitanyaprabuddha.com/json-to-excel"
  version "1.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/json-to-excel-v1.0.1/json-to-excel-1.0.1-macos-arm64.zip"
      sha256 "ae5c0124d909962b3d3a34be22f79f52fd1ca7c9c5ec85898f330b6444647ebf"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/json-to-excel-v1.0.1/json-to-excel-1.0.1-macos-x64.zip"
      sha256 "337a8cd8695cf395d3c7b809cd76194d5d8fea84ec1f7b1df60dc1e9faf2f3e8"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/json-to-excel-v1.0.1/json-to-excel-1.0.1-linux-x64.zip"
      sha256 "0ac1ee663b7414d136fdbc232c9a8f1855e6a35bd2ea94db519243d5ebf8cd99"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/json-to-excel-v1.0.1/json-to-excel-1.0.1-linux-arm64.zip"
      sha256 "0777c566e3588cdff91cd5a68b9b3c552e0569f388cbe416c56e735c4e95997c"
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
