class AkironMux < Formula
  desc "Unified Claude Code and Codex configuration manager"
  homepage "https://github.com/pomeluce/akiron-mux"
  url "https://github.com/pomeluce/akiron-mux/releases/download/v1.14.6/AkironMux-1.14.6-macos-arm64-cli.tar.gz"
  sha256 "bc8dbeb4692fe2985018483ce64b434777c8eba7043fc37dc42d2ab60449beb5"
  license "GPL-3.0"
  version "1.14.6"

  def install
    bin.install "akmux"
    bin.install "akmux-sessiond"
  end

  test do
    system "#{bin}/akmux", "--version"
  end
end
