class Lasso < Formula
  desc "CLI and CI integration platform for iOS Simulator automation"
  homepage "https://github.com/kylebrowning/lasso"
  url "https://github.com/kylebrowning/lasso/releases/download/0.3.1/lasso-0.3.1-macos.tar.gz"
  sha256 "2d188e207b1e97fe8bbe05b3cbef7a37794fd3e0605b9facbf6e0dd0f7f0cc60"
  version "0.3.1"
  license "MIT"

  depends_on :macos

  def install
    bin.install "lasso"
  end

  test do
    assert_match "USAGE: lasso", shell_output("#{bin}/lasso --help 2>&1")
  end
end
