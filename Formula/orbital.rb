class Orbital < Formula
  desc "Orbital CLI — authenticate and interact with the Orbital cloud service"
  homepage "https://github.com/danieldn-aramada/orbital"
  version "0.0.1"

  if Hardware::CPU.arm?
    url "https://github.com/danieldn-aramada/orbital/releases/download/cli/v0.0.1/orbital_v0.0.1_darwin_arm64.tar.gz"
    sha256 "52e7dc77103676cfb9e62516d9c6362846c5af96b0012e50d661de766fb76004"
  else
    url "https://github.com/danieldn-aramada/orbital/releases/download/cli/v0.0.1/orbital_v0.0.1_darwin_amd64.tar.gz"
    sha256 "dcf2aefd315433827498b4730c74d3688c8b27141af1e66b936e9688b3f2abd8"
  end

  def install
    bin.install "orbital"
  end

  test do
    system "#{bin}/orbital", "--version"
  end
end
