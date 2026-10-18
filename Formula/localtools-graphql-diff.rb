class LocaltoolsGraphqlDiff < Formula
  desc "Compare two GraphQL schemas and classify breaking, dangerous and safe changes"
  homepage "https://tools.chaitanyaprabuddha.com/graphql-diff"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/graphql-diff-v1.0.0/graphql-diff-1.0.0-macos-arm64.zip"
      sha256 "704efa21535ee6d24e26340ac6fbecab4b1ef363ec0493d3c600dee919d40173"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/graphql-diff-v1.0.0/graphql-diff-1.0.0-macos-x64.zip"
      sha256 "e06215d4acfb7d57d5c1f9773b0e98ff57d9605b12a5abb124ba67ef91cfe399"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/graphql-diff-v1.0.0/graphql-diff-1.0.0-linux-x64.zip"
      sha256 "37ecb1e498c8c7aea6147543ad15333596aa829660ebf17b2f0d66e6f59f289a"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/graphql-diff-v1.0.0/graphql-diff-1.0.0-linux-arm64.zip"
      sha256 "bdf8a8bc6400ee89f612b263676927ae3bbf30edb8e4a6e5913c012d4078be87"
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
