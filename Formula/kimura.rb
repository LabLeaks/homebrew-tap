# typed: false
# frozen_string_literal: true

class Kimura < Formula
  desc "Task-first workflow engine on top of jj"
  homepage "https://github.com/LabLeaks/kimura"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/LabLeaks/kimura/releases/download/v0.2.0/kimura-x86_64-apple-darwin.tar.xz"
      sha256 "e0c912cc8dc4cbd60106b802876af482071a62f847bdc6cf764aec7cffca371d"

      define_method(:install) do
        bin.install "kimura"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/LabLeaks/kimura/releases/download/v0.2.0/kimura-aarch64-apple-darwin.tar.xz"
      sha256 "06e863640ba675100a90b83c21c5931b338f149fb09b479685f6ece558624f4b"

      define_method(:install) do
        bin.install "kimura"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/LabLeaks/kimura/releases/download/v0.2.0/kimura-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "7e40ad75f8fa1c7cbf88dcece75929646e6e0b2083fcfc4bd2b586603b887619"

      define_method(:install) do
        bin.install "kimura"
      end
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/LabLeaks/kimura/releases/download/v0.2.0/kimura-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "69f63b06e934d3c9505fc83cef64663bd62e1c67ed7db40dcfa704348db2e8f0"

      define_method(:install) do
        bin.install "kimura"
      end
    end
  end

  test do
    system "#{bin}/kimura", "--help"
  end
end
