class Lasso < Formula
  desc "Visual regression CI for iOS"
  homepage "https://github.com/kylebrowning/lasso"
  url "https://github.com/kylebrowning/lasso/releases/download/0.4.1/lasso-0.4.1-macos.tar.gz"
  sha256 "fae3bd7fd167ee7730ca4ae20cd6af1bb9077eaff6f3648e25e7eb3121ea15a9"
  version "0.4.1"
  license "MIT"

  depends_on :macos

  def install
    bin.install "lasso"
  end

  test do
    assert_match "USAGE: lasso", shell_output("#{bin}/lasso --help 2>&1")
  end
end
