class AkironMux < Formula
  desc "Unified Claude Code and Codex configuration manager"
  homepage "https://github.com/pomeluce/akiron-mux"
  url "https://github.com/pomeluce/akiron-mux/releases/download/v1.13.0/AkironMux-1.13.0-macos-arm64-cli.tar.gz"
  sha256 "b3636074a7ce8f087c59b40727e94821000032f89dccb76d9539d4e1abc7fd38"
  license "GPL-3.0"
  version "1.13.0"

  def install
    bin.install "akmux"
    bin.install "akmux-sessiond"
  end

  test do
    system "#{bin}/akmux", "--version"
  end
end
