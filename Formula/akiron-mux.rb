class AkironMux < Formula
  desc "Unified Claude Code and Codex configuration manager"
  homepage "https://github.com/pomeluce/akiron-mux"
  url "https://github.com/pomeluce/akiron-mux/releases/download/v1.14.5/AkironMux-1.14.5-macos-arm64-cli.tar.gz"
  sha256 "8befa87d4b39aff7462769d5731bc13fc66896c89522f023a3252fb0d2bd50cb"
  license "GPL-3.0"
  version "1.14.5"

  def install
    bin.install "akmux"
    bin.install "akmux-sessiond"
  end

  test do
    system "#{bin}/akmux", "--version"
  end
end
