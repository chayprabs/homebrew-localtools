class LocaltoolsCsvSqlQuery < Formula
  desc "Run SQL on CSV, TSV, JSON, Parquet and log files (nginx, Apache, syslog) with DuckDB"
  homepage "https://tools.chaitanyaprabuddha.com/csv-sql-query"
  version "1.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/csv-sql-query-v1.0.3/csv-sql-query-1.0.3-macos-arm64.zip"
      sha256 "04d0c4408ff7feaf4b9bbe48c30db0f1c9822334869ec8c8b09f63282108e3d2"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/csv-sql-query-v1.0.3/csv-sql-query-1.0.3-macos-x64.zip"
      sha256 "7121bf7d786b7e568338e37c2c134b50d3295ebf4563a3290d5b619359fb8b6e"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/csv-sql-query-v1.0.3/csv-sql-query-1.0.3-linux-x64.zip"
      sha256 "089f484378c91063121722e4a600291870434bdcc6ec291d07ea2ae6e72cd180"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/csv-sql-query-v1.0.3/csv-sql-query-1.0.3-linux-arm64.zip"
      sha256 "cf69fe633e627b58215c3cc98b112b39d60f9b279408726ebdf1ee2ec0cb891d"
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
