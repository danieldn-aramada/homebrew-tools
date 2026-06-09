class Orbital < Formula
  desc "Orbital CLI — authenticate and interact with the Orbital cloud service"
  homepage "https://github.com/danieldn-aramada/orbital"
  version "0.0.2"

  if Hardware::CPU.arm?
    url "https://github.com/danieldn-aramada/orbital/releases/download/cli/v0.0.2/orbital_v0.0.2_darwin_arm64.tar.gz"
    sha256 "71b861197b895a883464627b1c2fa1e6e0b14e02ed7e0bc775eea5ebbb674164"
  else
    url "https://github.com/danieldn-aramada/orbital/releases/download/cli/v0.0.2/orbital_v0.0.2_darwin_amd64.tar.gz"
    sha256 "13a5f3ea7ee07ad6ae66b0b91d60340a767ec2da95a1d2adf3797ccc4767c5f2"
  end

  def install
    bin.install "orbital"
    generate_completions_from_executable(bin/"orbital", "completion")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/orbital version")
  end
end
