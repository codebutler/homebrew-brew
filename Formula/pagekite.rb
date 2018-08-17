class Pagekite < Formula
  desc "Python implementation of the PageKite remote front-end protocols."
  homepage "http://pagekite.org/"
  url "https://github.com/pagekite/PyPagekite/archive/v0.5.9.3.tar.gz"
  sha256 "b2a37743326c8b2d083ef7e7ff7bd60d9e4d247f5c3b1581ab72d4cf57012061"

  depends_on "python@2"
  
  resource "sockschain" do
    url "https://github.com/pagekite/PySocksipyChain/archive/v2.0.15.tar.gz"
    sha256 "0cc4348d606312df17b5039b252ee7bc8f2fc2f0426b14f086da5f7ef4dcd1a5"
  end

  def install
    ENV.prepend_create_path "PYTHONPATH", libexec/"lib/python2.7/site-packages"

    resources.each do |r|
      r.stage do
        system "python", *Language::Python.setup_install_args(prefix)
      end
    end

    system "python", *Language::Python.setup_install_args(prefix)
  end
end
