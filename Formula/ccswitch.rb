class Ccswitch < Formula
  desc "Claude Code model configuration manager"
  homepage "https://github.com/pomeluce/ccswitch"
  url "https://github.com/pomeluce/ccswitch/releases/download/v1.3.2/ccs_v1.3.2_darwin-arm64.tar.gz"
  sha256 "ce6eb6cceb6d079576b8a3091b68abf7e6513de5dc125be371fd041dddcc6fbc"
  license "GPL-3.0"
  version "1.3.2"

  def install
    bin.install "ccs"
  end

  test do
    system "#{bin}/ccs", "--version"
  end
end
