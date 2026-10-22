class LocaltoolsJsonToExcel < Formula
  desc "Convert JSON or JSONL into formatted .xlsx workbooks with typed columns and multiple sheets"
  homepage "https://tools.chaitanyaprabuddha.com/json-to-excel"
  version "1.0.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/json-to-excel-v1.0.6/json-to-excel-1.0.6-macos-arm64.zip"
      sha256 "a460d6a82173e990a93b769dbf66a18c588be3b0aa7be560c38cc2d401be71f2"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/json-to-excel-v1.0.6/json-to-excel-1.0.6-macos-x64.zip"
      sha256 "b8a3b43be6d448b3f92e203a5d140d716bf676b3d6145dad7fd75d59a65da278"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/json-to-excel-v1.0.6/json-to-excel-1.0.6-linux-x64.zip"
      sha256 "fdeb71ad3b0d374b2ee2d230aa758717e54adef6765c8a392d7bcba87077a897"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/json-to-excel-v1.0.6/json-to-excel-1.0.6-linux-arm64.zip"
      sha256 "9a7722615d06812abe883244db6eae506826bc0d0275b2c87f70d8cdd7f8da0e"
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
