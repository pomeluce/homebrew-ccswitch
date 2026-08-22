class AkironMux < Formula
  desc "Unified Claude Code and Codex configuration manager"
  homepage "https://github.com/pomeluce/akiron-mux"
  url "https://github.com/pomeluce/akiron-mux/releases/download/v1.14.8/AkironMux-1.14.8-macos-arm64-cli.tar.gz"
  sha256 "057db7d049d79e4cb6f374deedac2620e417d306c46a4510402d3a937ddbf160"
  license "GPL-3.0"
  version "1.14.8"

  def install
    bin.install "akmux"
    bin.install "akmux-sessiond"
  end

  test do
    system "#{bin}/akmux", "--version"
  end
end
