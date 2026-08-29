class Ticker < Formula
  desc "Tick-based spreadsheet for time series, finance, and simulation"
  homepage "https://github.com/philippepascal/ticker"
  version "0.1.1"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/philippepascal/ticker-releases/releases/download/v#{version}/ticker-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "adff92770de1ee3513be0f89839e7e91380585c400a10c8803cc9a58948917cf"
    end
  end

  def install
    bin.install "ticker"
  end

  test do
    assert_match "ticker", shell_output("#{bin}/ticker --help")
  end
end
