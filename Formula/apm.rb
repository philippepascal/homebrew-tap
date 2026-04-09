class Apm < Formula
  desc "Agentic project manager — CLI and server"
  homepage "https://github.com/philippepascal/apm"
  version "0.1.3"
  license "BSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/philippepascal/apm/releases/download/v#{version}/apm-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "a5758fd197eb274330cdbb1a1868547ce78e729bb1c8842f4ee36b814dcae5f4"
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
