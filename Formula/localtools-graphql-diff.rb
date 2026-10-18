class LocaltoolsGraphqlDiff < Formula
  desc "Compare two GraphQL schemas and classify breaking, dangerous and safe changes"
  homepage "https://tools.chaitanyaprabuddha.com/graphql-diff"
  version "1.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/graphql-diff-v1.0.1/graphql-diff-1.0.1-macos-arm64.zip"
      sha256 "fc2ddb00ac14709ec77144557380baeb3a0452ceb61e96a4cbcf92741ab9a415"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/graphql-diff-v1.0.1/graphql-diff-1.0.1-macos-x64.zip"
      sha256 "bb1215e001bed813f3945fe31772181be4d80ac65f08a830a2c9f87e3eafe707"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/graphql-diff-v1.0.1/graphql-diff-1.0.1-linux-x64.zip"
      sha256 "43f579e930223d736d0dcdc49876c47f308f96e60bad34623484b0cf6515ae66"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/graphql-diff-v1.0.1/graphql-diff-1.0.1-linux-arm64.zip"
      sha256 "5a2a8789a7ae55a9d1994a9306f390c395ecdf5a9cbf1805056c95ae2f78c8be"
    end
  end

  def install
    libexec.install Dir["*"]
    chmod 0755, libexec/"localtools-graphql-diff"
    bin.install_symlink libexec/"localtools-graphql-diff"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/localtools-graphql-diff --version")
  end
end
