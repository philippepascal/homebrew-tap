class Ticker < Formula
  desc "Tick-based spreadsheet for time series, finance, and simulation"
  homepage "https://github.com/philippepascal/ticker"
  version "0.1.0"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/philippepascal/ticker-releases/releases/download/v#{version}/ticker-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "ab426d7fd459c4c774dcb90d31846754cc0c91a3d42965f4b79d53d054306f6b"
    end
  end

  def install
    bin.install "ticker"
  end

  test do
    assert_match "ticker", shell_output("#{bin}/ticker --help")
  end
end
