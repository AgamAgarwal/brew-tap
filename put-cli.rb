class PutCli < Formula
  desc "Command-line utility for put.io"
  homepage "https://github.com/LordWaldomort/put-cli/"
  url "https://github.com/LordWaldomort/put-cli/archive/0.4.tar.gz"
  sha256 "2c5ad9a04157267f0aecf864669eb5cd00e94acfbf459c84c8ee702b738bebbd"

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
