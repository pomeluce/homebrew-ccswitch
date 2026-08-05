class Ccswitch < Formula
  desc "Claude Code model configuration manager"
  homepage "https://github.com/pomeluce/ccswitch"
  url "https://github.com/pomeluce/ccswitch/releases/download/v1.10.0/ccs_v1.10.0_darwin-arm64.tar.gz"
  sha256 "eb4d9b765e9a7d41dcad251cba8cf90c1c10f5d8a50ea904c2909b9f8e5e4a08"
  license "GPL-3.0"
  version "1.10.0"

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
