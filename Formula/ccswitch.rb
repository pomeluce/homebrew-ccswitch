class Ccswitch < Formula
  desc "Claude Code model configuration manager"
  homepage "https://github.com/pomeluce/ccswitch"
  url "https://github.com/pomeluce/ccswitch/releases/download/v1.7.2/ccs_v1.7.2_darwin-arm64.tar.gz"
  sha256 "869fa87284d4206abb537e9f0dc452766ae8f8f9a86275d2024d37b4c79b2844"
  license "GPL-3.0"
  version "1.7.2"

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
