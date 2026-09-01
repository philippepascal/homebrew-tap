class Apm < Formula
  desc "Agentic project manager — CLI and server"
  homepage "https://github.com/philippepascal/apm"
  version "0.1.59"
  license "BSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/philippepascal/apm/releases/download/v#{version}/apm-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "1f0d38c7eb5344b8543107be03efbc1b5d546cf367956e520c5ca87b789569c5"
    end
  end

  def install
    bin.install "apm"
    bin.install "apm-server"
  end

  test do
    assert_match "apm", shell_output("#{bin}/apm --help")
    assert_match "apm-server", shell_output("#{bin}/apm-server --help")
  end
end
