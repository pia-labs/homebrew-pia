class Pia < Formula
  desc "Fast, lightweight native terminal coding agent built with Rust"
  homepage "https://github.com/pia-labs/pia"
  version "0.2.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pia-labs/pia/releases/download/v0.2.4/pia-v0.2.4-aarch64-apple-darwin.tar.gz"
      sha256 "0fef438db75fe5578e610705f4ab7cb66a8676a18e40bfeb56f991651a1111fd"
    else
      url "https://github.com/pia-labs/pia/releases/download/v0.2.4/pia-v0.2.4-x86_64-apple-darwin.tar.gz"
      sha256 "5f99ab25e9618aeb9d093d0da8a143462e424df3078bdffc7f473cbda0529742"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pia-labs/pia/releases/download/v0.2.4/pia-v0.2.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1543d98f7e7c5257a3cc9a0620064fa3011b889bdb79ed7c886bb7d6092aaa81"
    else
      url "https://github.com/pia-labs/pia/releases/download/v0.2.4/pia-v0.2.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "42dcce61fcb691da7962e2dbd4bd5ae3fec0ed851f98f6f5a6332f80e152ca64"
    end
  end

  def install
    bin.install "pia"
  end

  test do
    assert_match "pia", shell_output("#{bin}/pia --version")
  end
end
