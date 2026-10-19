class LocaltoolsPandocGui < Formula
  desc "Convert documents between Markdown, DOCX, HTML, EPUB, LaTeX and PDF with pandoc"
  homepage "https://tools.chaitanyaprabuddha.com/pandoc-gui"
  version "1.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/pandoc-gui-v1.0.1/pandoc-gui-1.0.1-macos-arm64.zip"
      sha256 "93a6f1acc783f9a5fb8190dcc1c68bfa5481e499502848212622e6ae1f9df5ea"
    end
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/pandoc-gui-v1.0.1/pandoc-gui-1.0.1-macos-x64.zip"
      sha256 "ee3ac08d06c87cda4eba27382eddc5cb1d2acac81919ae5e0458535d6b7d3bf3"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/chayprabs/localtools/releases/download/pandoc-gui-v1.0.1/pandoc-gui-1.0.1-linux-x64.zip"
      sha256 "8960ab7d291a746c62247c03c25696579dbc028de45ca6ad889450e661da78cf"
    end
    on_arm do
      url "https://github.com/chayprabs/localtools/releases/download/pandoc-gui-v1.0.1/pandoc-gui-1.0.1-linux-arm64.zip"
      sha256 "a00d69f5d1a334012229568b6ef47cf2df785dc0ef950fcbd47114797d12a618"
    end
  end

  def install
    libexec.install Dir["*"]
    chmod 0755, libexec/"localtools-pandoc-gui"
    bin.install_symlink libexec/"localtools-pandoc-gui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/localtools-pandoc-gui --version")
  end
end
