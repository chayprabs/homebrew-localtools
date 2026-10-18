class LocaltoolsDatasetProfiler < Formula
  desc "Profile CSV, Parquet and JSON datasets (types, nulls, distributions) and detect schema and value drift between two files"
  homepage "https://tools.chaitanyaprabuddha.com/dataset-profiler"
  version "1.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/dataset-profiler-v1.0.2/dataset-profiler-1.0.2-macos-arm64.zip"
      sha256 "f17d01745beb376f19c4bab25309c9bfc51f55ad9224a9ef35a92964426b3aaf"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/dataset-profiler-v1.0.2/dataset-profiler-1.0.2-macos-x64.zip"
      sha256 "38b2aff53b9acdfda2cab01ea84559ee73d3da9da0cfe063ccb92af82842262f"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/dataset-profiler-v1.0.2/dataset-profiler-1.0.2-linux-x64.zip"
      sha256 "3d07176af72b666845f80043b2a39d413fd196659c2fe85897c12d2770bc21a8"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/dataset-profiler-v1.0.2/dataset-profiler-1.0.2-linux-arm64.zip"
      sha256 "152df16de32a6e1056724e32e14cb074497dce75d00af8c5f482b1dfc9bc2c3a"
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
