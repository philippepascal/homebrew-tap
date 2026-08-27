class Ticker < Formula
  desc "Tick-based spreadsheet for time series, finance, and simulation"
  homepage "https://github.com/philippepascal/ticker"
  version "0.1.0"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/philippepascal/ticker-releases/releases/download/v#{version}/ticker-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "18f1a3b1a86096b709c7f98705a2f311f4ae20971e2398250050dee5fd0161e0"
    end
  end

  def install
    bin.install "ticker"
  end

  test do
    assert_match "ticker", shell_output("#{bin}/ticker --help")
  end
end
