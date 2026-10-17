class LocaltoolsExcelDiff < Formula
  desc "Compare two Excel or CSV files cell by cell: values, formulas, formats, inserted rows and columns, sheets and named ranges"
  homepage "https://tools.chaitanyaprabuddha.com/excel-diff"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/excel-diff-v1.0.0/excel-diff-1.0.0-macos-arm64.zip"
      sha256 "3831c7394fbddbafb4715c8fa9fc50ee4e4ac9f9dc39dbb1d46cc90ab45c65c1"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/excel-diff-v1.0.0/excel-diff-1.0.0-macos-x64.zip"
      sha256 "3a368e39103fe8babc41a1a1179ed46f6d7840a2014fa0c32ab10d6d5e7dc535"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/excel-diff-v1.0.0/excel-diff-1.0.0-linux-x64.zip"
      sha256 "5976f53e05395b8b64d3d89e7e24f0d8c6bb53ea983912a94adaf85a2554b3ef"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/excel-diff-v1.0.0/excel-diff-1.0.0-linux-arm64.zip"
      sha256 "ab09f904edad156737d4831468d251fa403370d0de9a5128a828a5c012d60ee8"
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
