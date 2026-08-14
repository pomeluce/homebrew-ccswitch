class Ccswitch < Formula
  desc "Claude Code model configuration manager"
  homepage "https://github.com/pomeluce/ccswitch"
  url "https://github.com/pomeluce/ccswitch/releases/download/v1.10.3/ccs_v1.10.3_darwin-arm64.tar.gz"
  sha256 "e169fa51b5a022d35826436c8d6615504ec8b9395d45a62337faba70196d46fa"
  license "GPL-3.0"
  version "1.10.3"

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
