class Pia < Formula
  desc "Fast, lightweight native terminal coding agent built with Rust"
  homepage "https://github.com/pia-labs/pia"
  version "0.2.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pia-labs/pia/releases/download/v0.2.3/pia-v0.2.3-aarch64-apple-darwin.tar.gz"
      sha256 "bfa7b5ae31187bcd5f2e718ec39f353c512ae27345bb32cda497b1d16b71b8b2"
    else
      url "https://github.com/pia-labs/pia/releases/download/v0.2.3/pia-v0.2.3-x86_64-apple-darwin.tar.gz"
      sha256 "7fd09ff9de62a9ec35c21844068676005080bdcf6f3da2d66c4406313c170883"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pia-labs/pia/releases/download/v0.2.3/pia-v0.2.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0c9ac1c8f2a0285de1fce83da0fdc799acf9c69e9b924b65c535112a583f2637"
    else
      url "https://github.com/pia-labs/pia/releases/download/v0.2.3/pia-v0.2.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2861812a80334c12e050c63b0fbe657701cb17095dc1a7dda06365ddd061647b"
    end
  end

  def install
    bin.install "pia"
  end

  test do
    assert_match "pia", shell_output("#{bin}/pia --version")
  end
end
