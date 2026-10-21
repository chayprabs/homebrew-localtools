class LocaltoolsExcelDiff < Formula
  desc "Compare two Excel or CSV files cell by cell: values, formulas, formats, inserted rows and columns, sheets and named ranges"
  homepage "https://tools.chaitanyaprabuddha.com/excel-diff"
  version "1.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/excel-diff-v1.0.3/excel-diff-1.0.3-macos-arm64.zip"
      sha256 "b7e466d54e013d1caff98816cab47bc275204e3030563a6b340e0ce4208cee87"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/excel-diff-v1.0.3/excel-diff-1.0.3-macos-x64.zip"
      sha256 "3875f8e1971b00bf1054124dda33e475bb52c9a8402696609983ee2d43b60844"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/excel-diff-v1.0.3/excel-diff-1.0.3-linux-x64.zip"
      sha256 "1a73127b730fa49965e1566c6232b4d33e9bc63feaba454bdc3f34e4d264d8fa"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/excel-diff-v1.0.3/excel-diff-1.0.3-linux-arm64.zip"
      sha256 "2f30b5b7a9674e5902537b2077244a413039838047c8519b8af7aa6b47f9f480"
    end
  end

  def install
    libexec.install Dir["*"]
    chmod 0755, libexec/"localtools-excel-diff"
    bin.install_symlink libexec/"localtools-excel-diff"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/localtools-excel-diff --version")
  end
end
