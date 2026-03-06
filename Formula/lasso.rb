class Lasso < Formula
  desc "Visual regression CI for iOS"
  homepage "https://github.com/kylebrowning/lasso"
  url "https://github.com/kylebrowning/lasso/releases/download/0.4.0/lasso-0.4.0-macos.tar.gz"
  sha256 "67b7f091a88e147ee1a044e009438777b82232f73c1c43d8ba10109dda99eb30"
  version "0.4.0"
  license "MIT"

  depends_on :macos

  def install
    bin.install "lasso"
  end

  test do
    assert_match "USAGE: lasso", shell_output("#{bin}/lasso --help 2>&1")
  end
end
