class Ccswitch < Formula
  desc "Claude Code model configuration manager"
  homepage "https://github.com/pomeluce/ccswitch"
  url "https://github.com/pomeluce/ccswitch/releases/download/v1.8.1/ccs_v1.8.1_darwin-arm64.tar.gz"
  sha256 "2d937ee166f89e3bc30700621f942c7f52eee4ee9a7841bba422a8fef9896bb6"
  license "GPL-3.0"
  version "1.8.1"

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
