class Dupehound < Formula
  desc "Fast, offline duplicate-code detector: scan, history chart, CI gate"
  homepage "https://github.com/Rafaelpta/dupehound"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Rafaelpta/dupehound/releases/download/v0.1.0/dupehound-aarch64-apple-darwin.tar.gz"
      sha256 "f88a54b92310b5722437c274ba750d6074528616a426f5d9506865acd84b678f"
    end
    on_intel do
      url "https://github.com/Rafaelpta/dupehound/releases/download/v0.1.0/dupehound-x86_64-apple-darwin.tar.gz"
      sha256 "d87dca7b63887fd23fa1d799442ccae775f8bb0dd33db8a3a81f1daec4764e5d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Rafaelpta/dupehound/releases/download/v0.1.0/dupehound-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cebe2da289d9fee54a22cb841a49e69888f8dc76b82f3d31db640fb28f039070"
    end
    on_intel do
      url "https://github.com/Rafaelpta/dupehound/releases/download/v0.1.0/dupehound-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "32406b53c048ab800389a12200b7fe40cc505aaa39adbad4534216645070f79f"
    end
  end

  def install
    bin.install "dupehound"
  end

  test do
    assert_match "dupehound", shell_output("#{bin}/dupehound --version")
  end
end
