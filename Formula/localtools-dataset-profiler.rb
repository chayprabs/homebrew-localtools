class LocaltoolsDatasetProfiler < Formula
  desc "Profile CSV, Parquet and JSON datasets (types, nulls, distributions) and detect schema and value drift between two files"
  homepage "https://tools.chaitanyaprabuddha.com/dataset-profiler"
  version "1.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/dataset-profiler-v1.0.1/dataset-profiler-1.0.1-macos-arm64.zip"
      sha256 "9d829f679246d701d40c6f2064c133f05f0f1f6d897e12399f527a2b48a9e5a3"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/dataset-profiler-v1.0.1/dataset-profiler-1.0.1-macos-x64.zip"
      sha256 "3a20553c90d50464a708e5d6f57f51d780667a90ab1edf20e7b8013c88987200"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/dataset-profiler-v1.0.1/dataset-profiler-1.0.1-linux-x64.zip"
      sha256 "505d4b7f7ca7b2acc6e0e2e1011c4bcb31331c6e3ccba8a0613d74d77b254e60"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/dataset-profiler-v1.0.1/dataset-profiler-1.0.1-linux-arm64.zip"
      sha256 "00fef9e43b091ed13384b5d6909a9da759593bb4bb0ae96848fb6a726ae3502d"
    end
  end

  def install
    libexec.install Dir["*"]
    chmod 0755, libexec/"localtools-dataset-profiler"
    bin.install_symlink libexec/"localtools-dataset-profiler"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/localtools-dataset-profiler --version")
  end
end
