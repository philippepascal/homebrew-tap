class Apm < Formula
  desc "Agentic project manager — CLI and server"
  homepage "https://github.com/philippepascal/apm"
  version "0.1.22"
  license "BSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/philippepascal/apm/releases/download/v#{version}/apm-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "34b9199af542e90119f3cc7abae3a7101cb22a76e63ab624007ec8bedd12594c"
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
