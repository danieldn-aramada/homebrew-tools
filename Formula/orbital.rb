class Orbital < Formula
  desc "Orbital CLI — authenticate and interact with the Orbital cloud service"
  homepage "https://github.com/danieldn-aramada/orbital"
  version "0.0.1"

  if Hardware::CPU.arm?
    url "https://github.com/danieldn-aramada/orbital/releases/download/cli/v0.0.1/orbital_v0.0.1_darwin_arm64.tar.gz"
    sha256 "d43efcb0ded9cc8fa4674962385580d5b529c75e3b41cd95e73561650de53adf"
  else
    url "https://github.com/danieldn-aramada/orbital/releases/download/cli/v0.0.1/orbital_v0.0.1_darwin_amd64.tar.gz"
    sha256 "a1fa3536d3c082d9409b2615f03039deab945227350861cae206104a0ae7a14b"
  end

  def install
    bin.install "orbital"
    generate_completions_from_executable(bin/"orbital", "completion")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/orbital version")
  end
end
