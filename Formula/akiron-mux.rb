class AkironMux < Formula
  desc "Unified Claude Code and Codex configuration manager"
  homepage "https://github.com/pomeluce/akiron-mux"
  url "https://github.com/pomeluce/akiron-mux/releases/download/v1.14.0/AkironMux-1.14.0-macos-arm64-cli.tar.gz"
  sha256 "e2a44a55e48d35e8df4a5d300c0db274af4a7e098b64fdffb2b5687f986bc8fa"
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
