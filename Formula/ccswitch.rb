class Ccswitch < Formula
  desc "Claude Code model configuration manager"
  homepage "https://github.com/pomeluce/ccswitch"
  url "https://github.com/pomeluce/ccswitch/releases/download/v1.7.3/ccs_v1.7.3_darwin-arm64.tar.gz"
  sha256 "3404b53e21e34a258c6a2f8b21c4defd12fb06813cf58dca54828cb3037a050e"
  license "GPL-3.0"
  version "1.7.3"

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
