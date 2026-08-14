class Ccswitch < Formula
  desc "Claude Code model configuration manager"
  homepage "https://github.com/pomeluce/ccswitch"
  url "https://github.com/pomeluce/ccswitch/releases/download/v1.10.2/ccs_v1.10.2_darwin-arm64.tar.gz"
  sha256 "9231c48a6ef454b78847964a8a8db16bdafc48d4f416cd3a88be498e7e3d1f79"
  license "GPL-3.0"
  version "1.10.2"

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
