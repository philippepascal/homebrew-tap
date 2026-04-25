class Ticker < Formula
  desc "Tick-based spreadsheet for time series, finance, and simulation"
  homepage "https://github.com/philippepascal/ticker"
  version "0.0.7"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/philippepascal/ticker-releases/releases/download/v#{version}/ticker-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "d160aceb3fac6fe9bd0e7e2253fcb676c98791bb4dad44164ec33349360081a1"
    end
  end

  def install
    bin.install "ticker"
  end

  test do
    assert_match "ticker", shell_output("#{bin}/ticker --help")
  end
end
