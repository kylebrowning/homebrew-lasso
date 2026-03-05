class Lasso < Formula
  desc "CLI and CI integration platform for iOS Simulator automation"
  homepage "https://github.com/kylebrowning/lasso"
  url "https://github.com/kylebrowning/lasso/releases/download/0.2.6/lasso-0.2.6-macos.tar.gz"
  sha256 "180634128a4043034d5ed867b61660bd94cdd1b3c08737995070b1b5305cee4f"
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
