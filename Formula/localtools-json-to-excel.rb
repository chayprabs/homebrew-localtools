class LocaltoolsJsonToExcel < Formula
  desc "Convert JSON or JSONL into formatted .xlsx workbooks with typed columns and multiple sheets"
  homepage "https://tools.chaitanyaprabuddha.com/json-to-excel"
  version "1.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/json-to-excel-v1.0.3/json-to-excel-1.0.3-macos-arm64.zip"
      sha256 "e72c95b96306730ca32809406d1cf41b88f2269ea34a64c821e75bab826419d9"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/json-to-excel-v1.0.3/json-to-excel-1.0.3-macos-x64.zip"
      sha256 "8935de271d24dee8c6b6158917aa0a9d8a25ef086df749f53db2ef0c93789b75"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/json-to-excel-v1.0.3/json-to-excel-1.0.3-linux-x64.zip"
      sha256 "0244c79ce596c6460fb56eb0628bd448f46b25131f7ba046b26511b2f49be2ea"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/json-to-excel-v1.0.3/json-to-excel-1.0.3-linux-arm64.zip"
      sha256 "5e6462d075bcad7c84819afa23f0565a4193a00e00e10ef5c44c06357bb20a84"
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
