class LocaltoolsCsvSqlQuery < Formula
  desc "Run SQL on CSV, TSV, JSON, Parquet and log files (nginx, Apache, syslog) with DuckDB"
  homepage "https://tools.chaitanyaprabuddha.com/csv-sql-query"
  version "1.0.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/csv-sql-query-v1.0.4/csv-sql-query-1.0.4-macos-arm64.zip"
      sha256 "37f80d1d8cd2f36ba0baf45585a8352c6503e986a94b77063cbdc7b49df19228"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/csv-sql-query-v1.0.4/csv-sql-query-1.0.4-macos-x64.zip"
      sha256 "0212b1ed991337c9e5e9c21e60a9fb4b3e1a2d90c6d5f6f7a30a9c9f49f0b619"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/csv-sql-query-v1.0.4/csv-sql-query-1.0.4-linux-x64.zip"
      sha256 "2f7a826fee9653cbd55aaa147ed618d1fbd2e7e2179e652a8d80bbe19eca6a2f"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/csv-sql-query-v1.0.4/csv-sql-query-1.0.4-linux-arm64.zip"
      sha256 "85fa1371d195f230027ac8bc4f6965c81dbedd5fdbccbccccb80b2453fc41488"
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
