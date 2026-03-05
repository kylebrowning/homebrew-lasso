class Lasso < Formula
  desc "CLI and CI integration platform for iOS Simulator automation"
  homepage "https://github.com/kylebrowning/lasso"
  url "https://github.com/kylebrowning/lasso/releases/download/0.2.7/lasso-0.2.7-macos.tar.gz"
  sha256 "8ba8c7c56ee240b0041a2c109a517f1ff89e8198245cb74014aea3f11af17d84"
  version "0.2.7"
  license "MIT"

  depends_on :macos

  def install
    bin.install "lasso"
  end

  test do
    assert_match "USAGE: lasso", shell_output("#{bin}/lasso --help 2>&1")
  end
end
