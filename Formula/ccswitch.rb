class Ccswitch < Formula
  desc "Claude Code model configuration manager"
  homepage "https://github.com/pomeluce/ccswitch"
  url "https://github.com/pomeluce/ccswitch/releases/download/v1.9.2/ccs_v1.9.2_darwin-arm64.tar.gz"
  sha256 "c78e2648039e5be4fd55be1eb44abe26ce93cb0926bf1769638ccc47a6117e3d"
  license "GPL-3.0"
  version "1.9.2"

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
