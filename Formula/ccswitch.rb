class Ccswitch < Formula
  desc "Claude Code model configuration manager"
  homepage "https://github.com/pomeluce/ccswitch"
  url "https://github.com/pomeluce/ccswitch/releases/download/v1.5.2/ccs_v1.5.2_darwin-arm64.tar.gz"
  sha256 "a3ba22c5c593f3a3a402a459cc9e8e3e0b5a3be14074253610baa59bb30a662a"
  license "GPL-3.0"
  version "1.5.2"

  def install
    bin.install "ccs"
  end

  test do
    system "#{bin}/ccs", "--version"
  end
end
