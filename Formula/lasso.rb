class Lasso < Formula
  desc "CLI and CI integration platform for iOS Simulator automation"
  homepage "https://github.com/kylebrowning/lasso"
  url "https://github.com/kylebrowning/lasso/releases/download/0.2.4/lasso-0.2.4-macos.tar.gz"
  sha256 "8349b26db5ae537a1b260d94a6bf678afd80aa2965de96ffefb09d8392df6be3"
  version "0.2.4"
  license "MIT"

  depends_on :macos

  def install
    bin.install "lasso"
  end

  test do
    assert_match "USAGE: lasso", shell_output("#{bin}/lasso --help 2>&1")
  end
end
