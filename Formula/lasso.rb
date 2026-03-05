class Lasso < Formula
  desc "CLI and CI integration platform for iOS Simulator automation"
  homepage "https://github.com/kylebrowning/lasso"
  url "https://github.com/kylebrowning/lasso/releases/download/0.2.3/lasso-0.2.3-macos.tar.gz"
  sha256 "88c137bc884b418304b849734c7cb89bcc634afabcde13badd097b97a026eb59"
  version "0.2.3"
  license "MIT"

  depends_on :macos

  def install
    bin.install "lasso"
  end

  test do
    assert_match "USAGE: lasso", shell_output("#{bin}/lasso --help 2>&1")
  end
end
