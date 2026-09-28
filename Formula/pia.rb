class Pia < Formula
  desc "Fast, lightweight native terminal coding agent built with Rust"
  homepage "https://github.com/pia-labs/pia"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pia-labs/pia/releases/download/v0.2.1/pia-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "62ee44b147338572d4942ddec0a26cd45f77fff2c4c5e9aab7c117a2b0f1825a"
    else
      url "https://github.com/pia-labs/pia/releases/download/v0.2.1/pia-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "faae0aed4ffb629f8b1321edcdb68365934c654fd8fed54ef42862d68bcfd4b7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pia-labs/pia/releases/download/v0.2.1/pia-v0.2.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d04307d2098f6af5baf35daac9e97f548cd0d6234079ce996f74c39416533f67"
    else
      url "https://github.com/pia-labs/pia/releases/download/v0.2.1/pia-v0.2.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "afcc1983568eb9677da965a7c8fe04110c268dacf0e9045a597937964bd1df98"
    end
  end

  def install
    bin.install "pia"
  end

  test do
    assert_match "pia", shell_output("#{bin}/pia --version")
  end
end
