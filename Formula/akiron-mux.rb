class AkironMux < Formula
  desc "Unified Claude Code and Codex configuration manager"
  homepage "https://github.com/pomeluce/akiron-mux"
  url "https://github.com/pomeluce/akiron-mux/releases/download/v1.11.0/akmux_v1.11.0_darwin-arm64.tar.gz"
  sha256 "1df003866e6d5fd255a3d2fbd58d919bfe35d0034b029c878a9afe89314eb717"
  license "GPL-3.0"
  version "1.11.0"

  def install
    bin.install "akmux"
    bin.install "akmux-sessiond"
  end

  test do
    system "#{bin}/akmux", "--version"
  end
end
