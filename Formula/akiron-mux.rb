class AkironMux < Formula
  desc "Unified Claude Code and Codex configuration manager"
  homepage "https://github.com/pomeluce/ccswitch"
  url "https://github.com/pomeluce/ccswitch/releases/download/v1.11.0/akmux_v1.11.0_darwin-arm64.tar.gz"
  sha256 "509798649d646b1b4aa5ed456eee18cac375357952a39dc868b8541c86dd4ef0"
  license "GPL-3.0"
  version "1.11.0"

  def install
    bin.install "akmux"
    bin.install "akmux-sessiond"
  end

  test do
    system "#{bin}/akmux", "--version"
  end
end
