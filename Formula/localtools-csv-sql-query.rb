class LocaltoolsCsvSqlQuery < Formula
  desc "Run SQL on CSV, TSV, JSON, Parquet and log files (nginx, Apache, syslog) with DuckDB"
  homepage "https://tools.chaitanyaprabuddha.com/csv-sql-query"
  version "1.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/csv-sql-query-v1.0.2/csv-sql-query-1.0.2-macos-arm64.zip"
      sha256 "ac910a4648ef60474f266ece9bec96896000d37b4aabf7ab5418485dd4407cde"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/csv-sql-query-v1.0.2/csv-sql-query-1.0.2-macos-x64.zip"
      sha256 "bbc9874d06ea4d7b034b2f7941f9dca66d28e690fd058383c09abde426126837"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/csv-sql-query-v1.0.2/csv-sql-query-1.0.2-linux-x64.zip"
      sha256 "e802ed3c27f28d123f15e50feb7f927c42edf14403055d827ab845bf1290d241"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/csv-sql-query-v1.0.2/csv-sql-query-1.0.2-linux-arm64.zip"
      sha256 "bdd104445f3274372a87e0151efbc1239703e5474e40a8be827a65e9707d4d4b"
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
