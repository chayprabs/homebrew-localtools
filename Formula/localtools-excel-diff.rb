class LocaltoolsExcelDiff < Formula
  desc "Compare two Excel or CSV files cell by cell: values, formulas, formats, inserted rows and columns, sheets and named ranges"
  homepage "https://tools.chaitanyaprabuddha.com/excel-diff"
  version "1.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/excel-diff-v1.0.1/excel-diff-1.0.1-macos-arm64.zip"
      sha256 "2eb21799f3309260ba179ce041e598c765f75d8da1ec6831487f105cdc969667"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/excel-diff-v1.0.1/excel-diff-1.0.1-macos-x64.zip"
      sha256 "92c7a5f0632b9881acce77613295a9d84ccc93e6357e2ab94f0419a4010a4d3e"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/excel-diff-v1.0.1/excel-diff-1.0.1-linux-x64.zip"
      sha256 "7c1d76b3056d4f24c2b31af9ce544e42a870e1cf140440a72df054adc3d07593"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/excel-diff-v1.0.1/excel-diff-1.0.1-linux-arm64.zip"
      sha256 "7db37b7ae010babb41945e84f0226009110be2b06555d8f3856e5f6f19deff3d"
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
