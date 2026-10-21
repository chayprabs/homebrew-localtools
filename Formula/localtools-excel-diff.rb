class LocaltoolsExcelDiff < Formula
  desc "Compare two Excel or CSV files cell by cell: values, formulas, formats, inserted rows and columns, sheets and named ranges"
  homepage "https://tools.chaitanyaprabuddha.com/excel-diff"
  version "1.0.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/excel-diff-v1.0.4/excel-diff-1.0.4-macos-arm64.zip"
      sha256 "7bd23fefd34fa1cd17ee43237ba27d36931897bd0925791bfff51268f4923d0e"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/excel-diff-v1.0.4/excel-diff-1.0.4-macos-x64.zip"
      sha256 "25f25ff62f2f48f45f6c2dfda24660dba2f96a453cf47e823446a7ce38b826da"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/excel-diff-v1.0.4/excel-diff-1.0.4-linux-x64.zip"
      sha256 "2c2b342ced1f8cefd436a585437c2a78c778437d001c9ab4879f60f8b39908b9"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/excel-diff-v1.0.4/excel-diff-1.0.4-linux-arm64.zip"
      sha256 "e023bf986f22ff0a9c9b77f9e493367ab444b09f8508ec54fcb2e55b0ee33c9e"
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
