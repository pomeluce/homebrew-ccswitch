class AkironMux < Formula
  desc "Unified Claude Code and Codex configuration manager"
  homepage "https://github.com/pomeluce/akiron-mux"
  url "https://github.com/pomeluce/akiron-mux/releases/download/v1.14.3/AkironMux-1.14.3-macos-arm64-cli.tar.gz"
  sha256 "3dbb05ef8325bf88a26f708f4d540d941e3ed453edbb896d4807cae1f73d9f85"
  license "GPL-3.0"
  version "1.14.3"

  def install
    bin.install "akmux"
    bin.install "akmux-sessiond"
  end

  test do
    system "#{bin}/akmux", "--version"
  end
end
