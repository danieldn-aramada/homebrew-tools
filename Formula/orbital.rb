class Orbital < Formula
  desc "Orbital CLI — authenticate and interact with the Orbital cloud service"
  homepage "https://github.com/danieldn-aramada/orbital"
  version "0.0.17"

  if Hardware::CPU.arm?
    url "https://github.com/danieldn-aramada/orbital/releases/download/v0.0.17/orbital_v0.0.17_darwin_arm64.tar.gz"
    sha256 "f63cf58534ddef2964f3224950f7558b9ebc4a3d4d742dffad884700e7038ae4"
  else
    url "https://github.com/danieldn-aramada/orbital/releases/download/v0.0.17/orbital_v0.0.17_darwin_amd64.tar.gz"
    sha256 "1e5860cada4981e678dd928d45ce106a204db5ef77f3f2660065ff50ade10d92"
  end

  def install
    bin.install "orbital"
  end

  test do
    system "#{bin}/orbital", "--version"
  end
end
