class LocaltoolsExcelDiff < Formula
  desc "Compare two Excel or CSV files cell by cell: values, formulas, formats, inserted rows and columns, sheets and named ranges"
  homepage "https://tools.chaitanyaprabuddha.com/excel-diff"
  version "1.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/excel-diff-v1.0.2/excel-diff-1.0.2-macos-arm64.zip"
      sha256 "a4efaff3a925d092a7ad56a886f06c01be4389246b0efcb0890afe04a3a3f992"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/excel-diff-v1.0.2/excel-diff-1.0.2-macos-x64.zip"
      sha256 "8f13a62756cfe32a55a4bfe23612311a3962e2e18db5e34c8f2cb2cccf7beee3"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/excel-diff-v1.0.2/excel-diff-1.0.2-linux-x64.zip"
      sha256 "f4ad67b70a7a12fa731b5f4b3ab9a3c79f07c36bde93e629e7bde00138379730"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/excel-diff-v1.0.2/excel-diff-1.0.2-linux-arm64.zip"
      sha256 "5671bbbcc430978ba6d2d8bc43274ca722bd1a439f74b7b8fb2510420425e33e"
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
