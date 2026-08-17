class AkironMux < Formula
  desc "Unified Claude Code and Codex configuration manager"
  homepage "https://github.com/pomeluce/akiron-mux"
  url "https://github.com/pomeluce/akiron-mux/releases/download/v1.14.2/AkironMux-1.14.2-macos-arm64-cli.tar.gz"
  sha256 "84274be1bf54b8982375f974687b1805648898373c1bba34336b15296cc70dfa"
  license "GPL-3.0"
  version "1.14.2"

  def install
    bin.install "akmux"
    bin.install "akmux-sessiond"
  end

  test do
    system "#{bin}/akmux", "--version"
  end
end
