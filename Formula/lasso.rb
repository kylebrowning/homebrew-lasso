class Lasso < Formula
  desc "CLI and CI integration platform for iOS Simulator automation"
  homepage "https://github.com/kylebrowning/lasso"
  url "https://github.com/kylebrowning/lasso/releases/download/0.3.2/lasso-0.3.2-macos.tar.gz"
  sha256 "5b279c97c46e04969d8ce183648e7212881f965854acbe02a3d3f33d272e9682"
  version "0.3.2"
  license "MIT"

  depends_on :macos

  def install
    bin.install "lasso"
  end

  test do
    assert_match "USAGE: lasso", shell_output("#{bin}/lasso --help 2>&1")
  end
end
