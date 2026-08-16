class AkironMux < Formula
  desc "Unified Claude Code and Codex configuration manager"
  homepage "https://github.com/pomeluce/akiron-mux"
  url "https://github.com/pomeluce/akiron-mux/releases/download/v1.12.0/AkironMux-1.12.0-macos-arm64-cli.tar.gz"
  sha256 "aa0c1b1bd549d644537d665f89a7a3b5fd8f6ff52d8beedce59c72195d7a5cce"
  license "GPL-3.0"
  version "1.12.0"

  def install
    bin.install "akmux"
    bin.install "akmux-sessiond"
  end

  test do
    system "#{bin}/akmux", "--version"
  end
end
