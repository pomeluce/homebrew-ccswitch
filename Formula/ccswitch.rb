class Ccswitch < Formula
  desc "Claude Code model configuration manager"
  homepage "https://github.com/pomeluce/ccswitch"
  url "https://github.com/pomeluce/ccswitch/releases/download/v1.6.1/ccs_v1.6.1_darwin-arm64.tar.gz"
  sha256 "845fb980ce2f276387e69876bcce2c42b88082c417385662452f6b860dbedc06"
  license "GPL-3.0"
  version "1.6.1"

  def install
    bin.install "ccs"
  end

  test do
    system "#{bin}/ccs", "--version"
  end
end
