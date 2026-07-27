class Ccswitch < Formula
  desc "Claude Code model configuration manager"
  homepage "https://github.com/pomeluce/ccswitch"
  url "https://github.com/pomeluce/ccswitch/releases/download/v1.9.4/ccs_v1.9.4_darwin-arm64.tar.gz"
  sha256 "8d750a97d6829b5866f01594e5147684454440b8e73b2b4cf9f87aecb1579c82"
  license "GPL-3.0"
  version "1.9.4"

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
