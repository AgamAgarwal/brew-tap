class PutCli < Formula
  desc "Command-line utility for put.io"
  homepage "https://github.com/AjayBrahmakshatriya/put-cli/"
  url "https://github.com/AjayBrahmakshatriya/put-cli/archive/0.2.tar.gz"
  sha256 "864bd4b1ece05651084d69d9a28c4faae2c5930369369ca4f97cb0e942db07b3"

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
