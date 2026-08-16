class AkironMux < Formula
  desc "Unified Claude Code and Codex configuration manager"
  homepage "https://github.com/pomeluce/akiron-mux"
  url "https://github.com/pomeluce/akiron-mux/releases/download/v1.14.0/AkironMux-1.14.0-macos-arm64-cli.tar.gz"
  sha256 "c35f3436e13c98f8fa7e25041ce3bc57ad4e0199427d2a71e865c6ca9771e31e"
  license "GPL-3.0"
  version "1.14.0"

  def install
    bin.install "akmux"
    bin.install "akmux-sessiond"
  end

  test do
    system "#{bin}/akmux", "--version"
  end
end
