class PutCli < Formula
  desc "Command-line utility for put.io"
  homepage "https://github.com/AjayBrahmakshatriya/put-cli/"
  url "https://github.com/AjayBrahmakshatriya/put-cli/archive/0.1.3.tar.gz"
  sha256 "5a46a4e55694491e49d60390c33046021984d8293556a6a7804fc8fcfe34f129"

  def install
    system "make"
    system "make", "install"
    bin.install "build/put"
    bash_completion.install "build/autocomplete_script" => "put"
    (bash_completion/"helpers").install "build/autocomplete" => "put"
  end

  test do
    system "true"
  end
end
