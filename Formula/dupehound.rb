class Dupehound < Formula
  desc "Fast, offline duplicate-code detector: scan, history chart, CI gate"
  homepage "https://github.com/Rafaelpta/dupehound"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Rafaelpta/dupehound/releases/download/v0.1.1/dupehound-aarch64-apple-darwin.tar.gz"
      sha256 "2761f6fbfcbcce4ea9371afa6836e97aa59b14ef73fc81534f45925c187af1a9"
    end
    on_intel do
      url "https://github.com/Rafaelpta/dupehound/releases/download/v0.1.1/dupehound-x86_64-apple-darwin.tar.gz"
      sha256 "023f37916363784b6ac2de2ddcd0205244e2fc894dcbc414ebd9aa5679326f77"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Rafaelpta/dupehound/releases/download/v0.1.1/dupehound-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "176fb5159bf444aac223e06754e36a1876c70e1642d3736b2a341e4a447ebaa7"
    end
    on_intel do
      url "https://github.com/Rafaelpta/dupehound/releases/download/v0.1.1/dupehound-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "878e9a684b66ceeea79c8cb71c4e35904e1341e333a3d36683b807dee525950f"
    end
  end

  def install
    bin.install "dupehound"
  end

  test do
    assert_match "dupehound", shell_output("#{bin}/dupehound --version")
  end
end
