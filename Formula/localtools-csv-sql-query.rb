class LocaltoolsCsvSqlQuery < Formula
  desc "Run SQL on CSV, TSV, JSON, Parquet and log files (nginx, Apache, syslog) with DuckDB"
  homepage "https://tools.chaitanyaprabuddha.com/csv-sql-query"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/csv-sql-query-v1.0.0/csv-sql-query-1.0.0-macos-arm64.zip"
      sha256 "15643068d20d5b9f1eceb84e0ab653cfe3b3795106f56c5f466e7cac955882a0"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/csv-sql-query-v1.0.0/csv-sql-query-1.0.0-macos-x64.zip"
      sha256 "53ecf3f11473a1cf9efdecbea84c0c7168ebeadfcf76edc883099060731fdb31"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/csv-sql-query-v1.0.0/csv-sql-query-1.0.0-linux-x64.zip"
      sha256 "5c0d7602fef390f8570923e5a34b3ca0b24ae0e73713935f779082e61ed3fbb3"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/csv-sql-query-v1.0.0/csv-sql-query-1.0.0-linux-arm64.zip"
      sha256 "19ad25a08a4e8a1b26e9b4f9eae410247b74ab98c5cc03032e1373cbe796e67a"
    end
  end

  def install
    libexec.install Dir["*"]
    chmod 0755, libexec/"localtools-csv-sql-query"
    bin.install_symlink libexec/"localtools-csv-sql-query"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/localtools-csv-sql-query --version")
  end
end
