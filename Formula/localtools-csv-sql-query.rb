class LocaltoolsCsvSqlQuery < Formula
  desc "Run SQL on CSV, TSV, JSON, Parquet and log files (nginx, Apache, syslog) with DuckDB"
  homepage "https://tools.chaitanyaprabuddha.com/csv-sql-query"
  version "1.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/csv-sql-query-v1.0.1/csv-sql-query-1.0.1-macos-arm64.zip"
      sha256 "e7426d9ea8180ea6f321f0d872838ab1f723dd4000883fe3618d62cea6f4928c"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/csv-sql-query-v1.0.1/csv-sql-query-1.0.1-macos-x64.zip"
      sha256 "c1928f7ee59e2d7ae4efba337f4e4b42b02b9a99dde33bffc4f2bd905490da1e"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/csv-sql-query-v1.0.1/csv-sql-query-1.0.1-linux-x64.zip"
      sha256 "250c8f367f6cf8513e0075ef33e9e31e3be50c93cce0432f2e22f08ae57cede4"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/csv-sql-query-v1.0.1/csv-sql-query-1.0.1-linux-arm64.zip"
      sha256 "65480b51d9b82f45e344b2edd13230a0edc0e52b57c145c3af929397874ad7a3"
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
