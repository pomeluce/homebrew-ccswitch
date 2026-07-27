class Ccswitch < Formula
  desc "Claude Code model configuration manager"
  homepage "https://github.com/pomeluce/ccswitch"
  url "https://github.com/pomeluce/ccswitch/releases/download/v1.9.1/ccs_v1.9.1_darwin-arm64.tar.gz"
  sha256 "e76d111b60b853621e1b0adb998b0eddae2dadf4190d3dd29f1178a9c376c726"
  license "GPL-3.0"
  version "1.9.1"

  def install
    bin.install "ccs"
  end

  service do
    run [opt_bin/"ccs", "proxy", "serve"]
    keep_alive true
    run_at_load true
    log_path "/tmp/ccs-proxy.log"
    error_log_path "/tmp/ccs-proxy.log"
  end

  test do
    system "#{bin}/ccs", "--version"
  end
end
