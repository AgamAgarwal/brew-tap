class PutCli < Formula
  desc "Command-line utility for put.io"
  homepage "https://github.com/LordWaldomort/put-cli/"
  url "https://github.com/LordWaldomort/put-cli/archive/0.3.1.tar.gz"
  sha256 "899a1d1046f4b6c83b4edf7220566829de3c048af2c454563cfd2181d02b116d"

  depends_on "arghandler" => :python@2

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
