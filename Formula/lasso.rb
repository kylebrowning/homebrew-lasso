class Lasso < Formula
  desc "CLI and CI integration platform for iOS Simulator automation"
  homepage "https://github.com/kylebrowning/lasso"
  url "https://github.com/kylebrowning/lasso/releases/download/0.2.0/lasso-0.2.0-macos.tar.gz"
  sha256 "7710e19727fcfc8fbe5a6b5c1ed7057ce91d8197025603e007c93f3cdcfab76e"
  version "0.2.0"
  license "MIT"

  depends_on :macos

  def install
    bin.install "lasso"
  end

  test do
    assert_match "USAGE: lasso", shell_output("#{bin}/lasso --help 2>&1")
  end
end
