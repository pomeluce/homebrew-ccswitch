class AkironMux < Formula
  desc "Unified Claude Code and Codex configuration manager"
  homepage "https://github.com/pomeluce/akiron-mux"
  url "https://github.com/pomeluce/akiron-mux/releases/download/v1.13.1/AkironMux-1.13.1-macos-arm64-cli.tar.gz"
  sha256 "4ab120d2aea0061a10dd6fe9f7eb89e1282e9d5d5a480c055d96b4025b69d928"
  license "GPL-3.0"
  version "1.13.1"

  def install
    bin.install "akmux"
    bin.install "akmux-sessiond"
  end

  test do
    system "#{bin}/akmux", "--version"
  end
end
