class Lasso < Formula
  desc "CLI and CI integration platform for iOS Simulator automation"
  homepage "https://github.com/kylebrowning/lasso"
  url "https://github.com/kylebrowning/lasso/releases/download/0.3.0/lasso-0.3.0-macos.tar.gz"
  sha256 "884514b3aa65189a6981a515e3f8908de1d6b65e601266c5a977e23db39a1511"
  version "0.3.0"
  license "MIT"

  depends_on :macos

  def install
    bin.install "lasso"
  end

  test do
    assert_match "USAGE: lasso", shell_output("#{bin}/lasso --help 2>&1")
  end
end
