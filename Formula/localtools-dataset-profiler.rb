class LocaltoolsDatasetProfiler < Formula
  desc "Profile CSV, Parquet and JSON datasets (types, nulls, distributions) and detect schema and value drift between two files"
  homepage "https://tools.chaitanyaprabuddha.com/dataset-profiler"
  version "1.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/dataset-profiler-v1.0.3/dataset-profiler-1.0.3-macos-arm64.zip"
      sha256 "6bf44d8340f586b153f39748c3b4d814dd63c2a247931e4e75ab6ec8a129c055"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/dataset-profiler-v1.0.3/dataset-profiler-1.0.3-macos-x64.zip"
      sha256 "0a268df34fa235ee1d22cb665990a7f2aed027699d4adf386c6dbe2e348f0f3f"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/dataset-profiler-v1.0.3/dataset-profiler-1.0.3-linux-x64.zip"
      sha256 "4601928170ebeb1223f94be7891767bc5ab85481b29870e5a76708f8fd09e795"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/dataset-profiler-v1.0.3/dataset-profiler-1.0.3-linux-arm64.zip"
      sha256 "d02b699c44f991b47f7cabfd8afda7ff5f153abbfa3a32e9be0c7991aea034aa"
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
