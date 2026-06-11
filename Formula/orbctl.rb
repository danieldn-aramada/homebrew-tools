class Orbctl < Formula
  desc "orbctl — CLI for the Orbital configuration management system"
  homepage "https://github.com/danieldn-aramada/orbital"
  version "0.0.3"

  if Hardware::CPU.arm?
    url "https://github.com/danieldn-aramada/orbital/releases/download/cli/v0.0.3/orbctl_v0.0.3_darwin_arm64.tar.gz"
    sha256 "c1945cd6cb39dedb693085255e69967aaaffd4a5f462705f4b731c8da1f0c033"
  else
    url "https://github.com/danieldn-aramada/orbital/releases/download/cli/v0.0.3/orbctl_v0.0.3_darwin_amd64.tar.gz"
    sha256 "fca2ab220080fc33813672cb9932abb497eb67ba3c6b6b270380462a2fb6b547"
  end

  def install
    bin.install "orbctl"
    generate_completions_from_executable(bin/"orbctl", "completion")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/orbctl version")
  end
end
