class Mk < Formula
  desc "Local-first issue tracker for AI agents, with CLI and TUI"
  homepage "https://github.com/mrgeoffrich/mini-kanban"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mrgeoffrich/mini-kanban/releases/download/v0.2.2/mk-v0.2.2-darwin-arm64.tar.gz"
      sha256 "b4b5e11ffb62c1ed9de044b43b49ce05b235566e47713733b841b962321801ea"
    end
    on_intel do
      url "https://github.com/mrgeoffrich/mini-kanban/releases/download/v0.2.2/mk-v0.2.2-darwin-amd64.tar.gz"
      sha256 "e999c73a2598b4faee8e94c6cae0762137ee270918cc3c42c5d470d0820bc0b4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mrgeoffrich/mini-kanban/releases/download/v0.2.2/mk-v0.2.2-linux-arm64.tar.gz"
      sha256 "2f8024bd5af7f1a2757a3ccfa821be3e13d9921c87e1c712c202aa0e73d73251"
    end
    on_intel do
      url "https://github.com/mrgeoffrich/mini-kanban/releases/download/v0.2.2/mk-v0.2.2-linux-amd64.tar.gz"
      sha256 "51908918eebf75a0cb14ed5b2fb2da470e4253a6100f48d12965dc77823a1b00"
    end
  end

  def install
    bin.install "mk"
  end

  test do
    assert_match "mini-kanban", shell_output("#{bin}/mk --help")
  end
end
