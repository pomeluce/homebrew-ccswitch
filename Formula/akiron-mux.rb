class AkironMux < Formula
  desc "Unified Claude Code and Codex configuration manager"
  homepage "https://github.com/pomeluce/akiron-mux"
  url "https://github.com/pomeluce/akiron-mux/releases/download/v1.14.9/AkironMux-1.14.9-macos-arm64-cli.tar.gz"
  sha256 "d6c73f8eb9920a6c77618bedf7a7a3a03e3ebd203bff16e72d27d4abc0f5dbdc"
  license "GPL-3.0"
  version "1.14.9"

  def install
    bin.install "akmux"
    bin.install "akmux-sessiond"
  end

  test do
    system "#{bin}/akmux", "--version"
  end
end
