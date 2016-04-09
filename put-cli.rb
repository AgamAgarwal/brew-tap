class PutCli < Formula
  desc "Command-line utility for put.io"
  homepage "https://github.com/AjayBrahmakshatriya/put-cli/"
  url "https://github.com/AjayBrahmakshatriya/put-cli/archive/0.1.4.tar.gz"
  sha256 "cfc157725043a21452b6867ecbe936049076c04751bdbdc8f9a78632f57c933c"

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
