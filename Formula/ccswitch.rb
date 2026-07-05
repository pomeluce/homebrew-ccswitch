class Ccswitch < Formula
  desc "Claude Code model configuration manager"
  homepage "https://github.com/pomeluce/ccswitch"
  url "https://github.com/pomeluce/ccswitch/releases/download/v1.7.5/ccs_v1.7.5_darwin-arm64.tar.gz"
  sha256 "2344d1346ad67d6d13f4ea097e7c6827e6d27f784896e492f057d69ad91e28d1"
  license "GPL-3.0"
  version "1.7.5"

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
