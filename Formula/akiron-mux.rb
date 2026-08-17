class AkironMux < Formula
  desc "Unified Claude Code and Codex configuration manager"
  homepage "https://github.com/pomeluce/akiron-mux"
  url "https://github.com/pomeluce/akiron-mux/releases/download/v1.14.1/AkironMux-1.14.1-macos-arm64-cli.tar.gz"
  sha256 "927e9b06f13b5718ff56d6ce6f1bbedd48693ae7d23e2f8f569add310aa5b0b9"
  license "GPL-3.0"
  version "1.14.1"

  def install
    bin.install "akmux"
    bin.install "akmux-sessiond"
  end

  test do
    system "#{bin}/akmux", "--version"
  end
end
