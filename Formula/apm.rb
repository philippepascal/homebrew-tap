class Apm < Formula
  desc "Agentic project manager — CLI and server"
  homepage "https://github.com/philippepascal/apm"
  version "0.1.30"
  license "BSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/philippepascal/apm/releases/download/v#{version}/apm-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "5eb35c06d6af0eb0cf640f2618afe1cc48cc4b9fd555b0933f504cc51fa069ed"
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
