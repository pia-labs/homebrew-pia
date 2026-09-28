class Pia < Formula
  desc "Fast, lightweight native terminal coding agent built with Rust"
  homepage "https://github.com/pia-labs/pia"
  version "0.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pia-labs/pia/releases/download/v0.2.2/pia-v0.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "9dbe325f55cdd1196baa4c54eb3464bebf343948c021124ef18839ae8d18a106"
    else
      url "https://github.com/pia-labs/pia/releases/download/v0.2.2/pia-v0.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "29d7f85a00fdfabfd502f203bb9c7923d786e52130853dbfdc00443a9aa2856c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pia-labs/pia/releases/download/v0.2.2/pia-v0.2.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a05e90042ab62f47c9bf4137605047b1c2f04286c5dfa2191fb990af3e5f18f2"
    else
      url "https://github.com/pia-labs/pia/releases/download/v0.2.2/pia-v0.2.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "80ec8dcfeb5b5e9f126eb9156266d932abf4ab9e9b07924c1763cdfb3ea1f97e"
    end
  end

  def install
    bin.install "pia"
  end

  test do
    assert_match "pia", shell_output("#{bin}/pia --version")
  end
end
