class Orbital < Formula
  desc "Orbital CLI — authenticate and interact with the Orbital cloud service"
  homepage "https://github.com/danieldn-aramada/orbital"
  version "0.0.3"

  if Hardware::CPU.arm?
    url "https://github.com/danieldn-aramada/orbital/releases/download/cli/v0.0.3/orbital_v0.0.3_darwin_arm64.tar.gz"
    sha256 "d6cc62d928b3b3f3d1ec26f575b69bba1d722eddf274657f64ac7e128848d7b7"
  else
    url "https://github.com/danieldn-aramada/orbital/releases/download/cli/v0.0.3/orbital_v0.0.3_darwin_amd64.tar.gz"
    sha256 "387bcc49fab36e89a987bd445735402301085355939de73e0973984f6f1cf0a0"
  end

  def install
    bin.install "orbital"
    generate_completions_from_executable(bin/"orbital", "completion")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/orbital version")
  end
end
