class Lasso < Formula
  desc "Visual regression CI for iOS"
  homepage "https://github.com/kylebrowning/lasso"
  url "https://github.com/kylebrowning/lasso/releases/download/0.4.2/lasso-0.4.2-macos.tar.gz"
  sha256 "1f2a0b5e9b8be4af3cdd48819bac3ff80ec89e982b4e8d20ed630df817f63304"
  version "0.4.2"
  license "MIT"

  depends_on :macos

  def install
    bin.install "lasso"
  end

  test do
    assert_match "USAGE: lasso", shell_output("#{bin}/lasso --help 2>&1")
  end
end
