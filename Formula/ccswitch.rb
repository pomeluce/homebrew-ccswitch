class Ccswitch < Formula
  desc "Claude Code model configuration manager"
  homepage "https://github.com/pomeluce/ccswitch"
  url "https://github.com/pomeluce/ccswitch/releases/download/v1.6.0/ccs_v1.6.0_darwin-arm64.tar.gz"
  sha256 "bb699bd30d774d57575e59f641ef9f1ebe8465eef01076eee0b7d23e5a817e19"
  license "GPL-3.0"
  version "1.6.0"

  def install
    bin.install "ccs"
  end

  test do
    system "#{bin}/ccs", "--version"
  end
end
