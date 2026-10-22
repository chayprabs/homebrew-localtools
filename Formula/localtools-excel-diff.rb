class LocaltoolsExcelDiff < Formula
  desc "Compare two Excel or CSV files cell by cell: values, formulas, formats, inserted rows and columns, sheets and named ranges"
  homepage "https://tools.chaitanyaprabuddha.com/excel-diff"
  version "1.0.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/excel-diff-v1.0.5/excel-diff-1.0.5-macos-arm64.zip"
      sha256 "e906d90fdb6137e0f97ae540459f75fafb75621fe8acf4a198c83b639b17d62f"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/excel-diff-v1.0.5/excel-diff-1.0.5-macos-x64.zip"
      sha256 "0f4c7658f6e2fa44ea3751e85beebb06d2187a43ae57e962494f0ff91b2f58ba"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/excel-diff-v1.0.5/excel-diff-1.0.5-linux-x64.zip"
      sha256 "5097309024e79760097a88638ee071d91e9d3301b7b60b7bc18d12fee2ae2b52"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/excel-diff-v1.0.5/excel-diff-1.0.5-linux-arm64.zip"
      sha256 "2f6cbb6091be927cba3beb299d1cfae485561768ed7557c188308126f2932a38"
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
