class PutCli < Formula
  desc "Command-line utility for put.io"
  homepage "https://github.com/LordWaldomort/put-cli/"
  url "https://github.com/LordWaldomort/put-cli/archive/0.3.tar.gz"
  sha256 "1ba5b6ff45c392120370c489bec71ab09b953088f666c9bc509b9d5484004a35"

  depends_on "arghandler" => :python

  def install
    system "make"
    bin.install "build/put"
    bash_completion.install "build/autocomplete_script" => "put"
    (bash_completion/"helpers").install "build/autocomplete" => "put"
  end

  test do
    system "true"
  end
end
