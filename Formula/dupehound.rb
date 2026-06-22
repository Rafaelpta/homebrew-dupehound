class Dupehound < Formula
  desc "Fast, offline duplicate-code detector: scan, history chart, CI gate"
  homepage "https://github.com/Rafaelpta/dupehound"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Rafaelpta/dupehound/releases/download/v0.1.2/dupehound-aarch64-apple-darwin.tar.gz"
      sha256 "878024e34c5cc79c3ad49828f95d82df3e0d8811a480586597587bc186e11ad4"
    end
    on_intel do
      url "https://github.com/Rafaelpta/dupehound/releases/download/v0.1.2/dupehound-x86_64-apple-darwin.tar.gz"
      sha256 "391fe2be8b8c8cc431902bdc54cee90db109524f0e7f82011e0dcdfc056fce8f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Rafaelpta/dupehound/releases/download/v0.1.2/dupehound-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "19f4a28d3344b8d334dc67a34b1b262c6187905b112c1f443ad835b087016cab"
    end
    on_intel do
      url "https://github.com/Rafaelpta/dupehound/releases/download/v0.1.2/dupehound-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "05c86a8a88733eb31d74739a9ac432701ca30559b92375373f8ee400d2d0b9d4"
    end
  end

  def install
    bin.install "dupehound"
  end

  test do
    assert_match "dupehound", shell_output("#{bin}/dupehound --version")
  end
end
