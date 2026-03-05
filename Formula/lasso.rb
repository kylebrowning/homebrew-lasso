class Lasso < Formula
  desc "CLI and CI integration platform for iOS Simulator automation"
  homepage "https://github.com/kylebrowning/lasso"
  url "https://github.com/kylebrowning/lasso/releases/download/0.2.6/lasso-0.2.6-macos.tar.gz"
  sha256 "8d90dc6e250e38fd7a68ff5b3de05788dde4ea270ea41cd0bf54977c6edffca9"
  version "0.2.6"
  license "MIT"

  depends_on :macos

  def install
    bin.install "lasso"
  end

  test do
    assert_match "USAGE: lasso", shell_output("#{bin}/lasso --help 2>&1")
  end
end
