class Lasso < Formula
  desc "CLI and CI integration platform for iOS Simulator automation"
  homepage "https://github.com/kylebrowning/lasso"
  url "https://github.com/kylebrowning/lasso/releases/download/0.1.2/lasso-0.1.2-macos.tar.gz"
  sha256 "c51c665e0c7232fd70b315068ee08c7078466df40c2039f3ebebb5ebb555e97e"
  version "0.1.2"
  license "MIT"

  depends_on :macos

  def install
    bin.install "lasso"
  end

  test do
    assert_match "USAGE: lasso", shell_output("#{bin}/lasso --help 2>&1")
  end
end
