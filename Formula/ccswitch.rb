class Ccswitch < Formula
  desc "Claude Code model configuration manager"
  homepage "https://github.com/pomeluce/ccswitch"
  url "https://github.com/pomeluce/ccswitch/releases/download/v1.9.3/ccs_v1.9.3_darwin-arm64.tar.gz"
  sha256 "4566c47ca4ed443f08a35bba368100a0e0e796d7d008697fee49f3487ccf33d1"
  license "GPL-3.0"
  version "1.9.3"

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
