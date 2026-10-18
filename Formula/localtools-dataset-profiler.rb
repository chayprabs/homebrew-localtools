class LocaltoolsDatasetProfiler < Formula
  desc "Profile CSV, Parquet and JSON datasets (types, nulls, distributions) and detect schema and value drift between two files"
  homepage "https://tools.chaitanyaprabuddha.com/dataset-profiler"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/dataset-profiler-v1.0.0/dataset-profiler-1.0.0-macos-arm64.zip"
      sha256 "910625570870766ffdfb9c7779ea6e530ce38348dc933d5621a82c145deab0b9"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/dataset-profiler-v1.0.0/dataset-profiler-1.0.0-macos-x64.zip"
      sha256 "80f69a8cb4cc99ff232b6cb3e9e7207d48d10aa4a1c3603146d6f084772d380c"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/dataset-profiler-v1.0.0/dataset-profiler-1.0.0-linux-x64.zip"
      sha256 "9d11eadacccc565cc0f97c91b4350ede944337db2c977f57c94257f162e5ed4c"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/dataset-profiler-v1.0.0/dataset-profiler-1.0.0-linux-arm64.zip"
      sha256 "c6c0fa048c5509ab4d0fc5eb7b37a9c3079ce66734cf9c145d44cf2e55abf00b"
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
