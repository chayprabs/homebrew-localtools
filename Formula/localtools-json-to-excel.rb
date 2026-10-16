class LocaltoolsJsonToExcel < Formula
  desc "Convert JSON or JSONL into formatted .xlsx workbooks with typed columns and multiple sheets"
  homepage "https://tools.chaitanyaprabuddha.com/json-to-excel"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/json-to-excel-v1.0.0/json-to-excel-1.0.0-macos-arm64.zip"
      sha256 "76485e67bd63faceaa753119c03d0b445725cdb0ba70d50174c69e47a93486e4"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/json-to-excel-v1.0.0/json-to-excel-1.0.0-macos-x64.zip"
      sha256 "e3e3674f7ddb3410bfb4ab27b573f354adc69aa101002eaf764974f6cf9c6fec"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/json-to-excel-v1.0.0/json-to-excel-1.0.0-linux-x64.zip"
      sha256 "ff1799c2216e4e4bd416217790c254a9e747e6b1ff72e134d06a9652b9723006"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/json-to-excel-v1.0.0/json-to-excel-1.0.0-linux-arm64.zip"
      sha256 "5b22c3823c0995cad7713a6b20dd2813f6b6915c673b6af6b122c0a1bcc10757"
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
