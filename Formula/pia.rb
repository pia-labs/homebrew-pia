class Pia < Formula
  desc "Fast, lightweight native terminal coding agent built with Rust"
  homepage "https://github.com/pia-labs/pia"
  version "0.2.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pia-labs/pia/releases/download/v0.2.5/pia-v0.2.5-aarch64-apple-darwin.tar.gz"
      sha256 "07175cd0c1dd9147bbc3297e29fbe8ec6b0a9ea5b692aa0940520b4ea2a412cc"
    else
      url "https://github.com/pia-labs/pia/releases/download/v0.2.5/pia-v0.2.5-x86_64-apple-darwin.tar.gz"
      sha256 "4cef7cdedbca6761025af6624ee8346a1bfabc410cffe1d3508e8fa9750e7611"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pia-labs/pia/releases/download/v0.2.5/pia-v0.2.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "160d3e2f03bbc1b83a5bd6609d05e7ecee6b7d55b312900eac21e5a940e11c39"
    else
      url "https://github.com/pia-labs/pia/releases/download/v0.2.5/pia-v0.2.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7dc880eda1292ae933c748e87b43cc7e46800cb684c9940533d9ea4b0542825f"
    end
  end

  def install
    bin.install "pia"
  end

  test do
    assert_match "pia", shell_output("#{bin}/pia --version")
  end
end
