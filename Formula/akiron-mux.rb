class AkironMux < Formula
  desc "Unified Claude Code and Codex configuration manager"
  homepage "https://github.com/pomeluce/akiron-mux"
  url "https://github.com/pomeluce/akiron-mux/releases/download/v1.14.4/AkironMux-1.14.4-macos-arm64-cli.tar.gz"
  sha256 "3f1880afd8e6155ff88558b1056f88fb1c57afbbf7851f991e6a3285275fcd27"
  license "GPL-3.0"
  version "1.14.4"

  def install
    bin.install "akmux"
    bin.install "akmux-sessiond"
  end

  test do
    system "#{bin}/akmux", "--version"
  end
end
