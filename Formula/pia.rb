class Pia < Formula
  desc "PIA (Programmable Intelligence Agent) - Fast, lightweight native terminal coding agent built with Rust"
  homepage "https://github.com/pia-labs/pia"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pia-labs/pia/releases/download/v0.2.0/pia-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "0e6648617fbac34b66e6ac623745723c3b73c5f7cf666cb02cb7a2facf1288fa"
    else
      url "https://github.com/pia-labs/pia/releases/download/v0.2.0/pia-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "a2c90ec9cc8c896032eb057562f9038a8d44e20910bef99812c8f46644a6ffb7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pia-labs/pia/releases/download/v0.2.0/pia-v0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c3ef1a9c3a9e4fffbfdbdb493dace180d2b7a41926df8fd5095c9bcf6c7aad55"
    else
      url "https://github.com/pia-labs/pia/releases/download/v0.2.0/pia-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2cfbbccbae5e913a1570b946ed4971463dbf14bc4acebd95a5af2bfde8d81abd"
    end
  end

  def install
    bin.install "pia"
  end

  test do
    assert_match "pia", shell_output("#{bin}/pia --version")
  end
end
