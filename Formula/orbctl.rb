class Orbctl < Formula
  desc "orbctl — CLI for the Orbital configuration management system"
  homepage "https://github.com/danieldn-aramada/orbital"
  version "0.0.3"

  if Hardware::CPU.arm?
    url "https://github.com/danieldn-aramada/orbital/releases/download/cli/v0.0.3/orbctl_v0.0.3_darwin_arm64.tar.gz"
    sha256 "a6690d89606f0635653a9d61b9220b664dc46126259686cf6f134d0294989ced"
  else
    url "https://github.com/danieldn-aramada/orbital/releases/download/cli/v0.0.3/orbctl_v0.0.3_darwin_amd64.tar.gz"
    sha256 "cfb994b347f74a5e6da41d6f9f75107582b07ac335425984699cf15464830887"
  end

  def install
    bin.install "orbctl"
    generate_completions_from_executable(bin/"orbctl", "completion")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/orbctl version")
  end
end
