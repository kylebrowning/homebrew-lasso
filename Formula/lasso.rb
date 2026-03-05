class Lasso < Formula
  desc "CLI and CI integration platform for iOS Simulator automation"
  homepage "https://github.com/kylebrowning/lasso"
  url "https://github.com/kylebrowning/lasso/releases/download/0.2.2/lasso-0.2.2-macos.tar.gz"
  sha256 "d31bf78135d3ab7d393b05c31cab64d4b8a168b08ab631eb45bdfbbdbce83835"
  version "0.2.2"
  license "MIT"

  depends_on :macos

  def install
    bin.install "lasso"
  end

  test do
    assert_match "USAGE: lasso", shell_output("#{bin}/lasso --help 2>&1")
  end
end
