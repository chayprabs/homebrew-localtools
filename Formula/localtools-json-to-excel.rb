class LocaltoolsJsonToExcel < Formula
  desc "Convert JSON or JSONL into formatted .xlsx workbooks with typed columns and multiple sheets"
  homepage "https://tools.chaitanyaprabuddha.com/json-to-excel"
  version "1.0.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/json-to-excel-v1.0.4/json-to-excel-1.0.4-macos-arm64.zip"
      sha256 "a13fc57a3e9107a6535b49519d45436d8a4ade00d481e3265001fa5e5a589468"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/json-to-excel-v1.0.4/json-to-excel-1.0.4-macos-x64.zip"
      sha256 "4e0bcfab239c9170537b7457b60dc54103a80a354512415fb7665e3e2316d814"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/json-to-excel-v1.0.4/json-to-excel-1.0.4-linux-x64.zip"
      sha256 "83e1306c8de19692e465e385d2d2e1dc3a78ce0827665746267ea7f6253be122"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/json-to-excel-v1.0.4/json-to-excel-1.0.4-linux-arm64.zip"
      sha256 "58692c752329cc325db68f30dbbdccf2adc379623e8d4bcb69b83b7767600121"
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
