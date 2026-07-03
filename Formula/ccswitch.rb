class Ccswitch < Formula
  desc "Claude Code model configuration manager"
  homepage "https://github.com/pomeluce/ccswitch"
  url "https://github.com/pomeluce/ccswitch/releases/download/v1.3.2/ccs_v1.3.2_darwin-arm64.tar.gz"
  sha256 "974aa06d54a60ff31444a2a2b04aaa200680581075511199e34d69b676339753"
  license "GPL-3.0"
  version "1.3.2"

  def install
    bin.install "ccs"
  end

  test do
    system "#{bin}/ccs", "--version"
  end
end
