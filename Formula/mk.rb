class Mk < Formula
  desc "Local-first issue tracker for AI agents, with CLI and TUI"
  homepage "https://github.com/mrgeoffrich/mini-kanban"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mrgeoffrich/mini-kanban/releases/download/v0.2.1/mk-v0.2.1-darwin-arm64.tar.gz"
      sha256 "5dc784f3da2d2353b43d03cf970a16e299ca8d3f646459c5fd8a9c2ce2b756c3"
    end
    on_intel do
      url "https://github.com/mrgeoffrich/mini-kanban/releases/download/v0.2.1/mk-v0.2.1-darwin-amd64.tar.gz"
      sha256 "813977ffc3c8f94b337b48bc3a29611a54d2b6deec559875695f760566537d40"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mrgeoffrich/mini-kanban/releases/download/v0.2.1/mk-v0.2.1-linux-arm64.tar.gz"
      sha256 "ba0b72455bdb084add37f7d90db0b4bf52c1892e7a47a7df33a09ff25ce0f612"
    end
    on_intel do
      url "https://github.com/mrgeoffrich/mini-kanban/releases/download/v0.2.1/mk-v0.2.1-linux-amd64.tar.gz"
      sha256 "90a1956e3337474a297fa3f5b76da62cab05e1077cdc04275fa9caf7d8a37c1b"
    end
  end

  def install
    bin.install "mk"
  end

  test do
    assert_match "mini-kanban", shell_output("#{bin}/mk --help")
  end
end
