# typed: false
# frozen_string_literal: true

class Kimura < Formula
  desc "Task-first workflow engine on top of jj"
  homepage "https://github.com/LabLeaks/kimura"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/LabLeaks/kimura/releases/download/v0.1.0/kimura-x86_64-apple-darwin.tar.xz"
      sha256 "882314b6fc2733b3ea74434b14c1322935da7516149ed00eddc3636eed094a67"

      define_method(:install) do
        bin.install "kimura"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/LabLeaks/kimura/releases/download/v0.1.0/kimura-aarch64-apple-darwin.tar.xz"
      sha256 "b19815ca30937f2e168d107122c0745d13fc832a01dc3bc218110712be1aefb1"

      define_method(:install) do
        bin.install "kimura"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/LabLeaks/kimura/releases/download/v0.1.0/kimura-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "7b295fba5b1ad3b00ce78ea2d4b4cb013789af9b88a9e1573077183fa55a3757"

      define_method(:install) do
        bin.install "kimura"
      end
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/LabLeaks/kimura/releases/download/v0.1.0/kimura-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "6b7e2f0c89a41e05ad365171516bbfa5d63f3d6e37da52ad111bcada3065fb5b"

      define_method(:install) do
        bin.install "kimura"
      end
    end
  end

  test do
    system "#{bin}/kimura", "--help"
  end
end
