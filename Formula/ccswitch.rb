class Ccswitch < Formula
  desc "Claude Code model configuration manager"
  homepage "https://github.com/pomeluce/ccswitch"
  url "https://github.com/pomeluce/ccswitch/releases/download/v1.9.0/ccs_v1.9.0_darwin-arm64.tar.gz"
  sha256 "eb8d65bbdf626d1f99ead3a28d22a3c0cdf827334c3b72e220d0a4aeceb8ec1b"
  license "GPL-3.0"
  version "1.9.0"

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
