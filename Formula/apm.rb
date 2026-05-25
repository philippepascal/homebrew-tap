class Apm < Formula
  desc "Agentic project manager — CLI and server"
  homepage "https://github.com/philippepascal/apm"
  version "0.1.34"
  license "BSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/philippepascal/apm/releases/download/v#{version}/apm-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "800e8b99af99a5d54c695ed169c35ba590f79afe3964f15c23fc6fdc4bb08a56"
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
