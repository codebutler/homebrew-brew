class Sqlc < Formula
  desc "Generate type safe Go from SQL"
  homepage "https://sqlc.dev/"
  url "https://bin.equinox.io/a/mnRPZaaTvb2/sqlc-v0.0.0-20200825122614-74ea3b950b1d-darwin-amd64.zip"
  sha256 "1a7ed6b1dff0236fb8304d7d344ae295e2e01b451278d1eb92a6bc5873e72a32"

  def install
    bin.install "sqlc"
  end
end
