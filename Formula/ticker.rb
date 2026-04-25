class Ticker < Formula
  desc "Tick-based spreadsheet for time series, finance, and simulation"
  homepage "https://github.com/philippepascal/ticker"
  version "0.0.6"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/philippepascal/ticker-releases/releases/download/v#{version}/ticker-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/philippepascal/ticker-releases/releases/download/v#{version}/ticker-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install "ticker"
  end

  test do
    assert_match "ticker", shell_output("#{bin}/ticker --help")
  end
end
