# typed: false
# frozen_string_literal: true

class Special < Formula
  desc "Repo-native semantic spec tool"
  homepage "https://github.com/LabLeaks/special"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/LabLeaks/special/releases/download/v0.4.0/special-cli-x86_64-apple-darwin.tar.xz"
      sha256 "90b64da5e9103c7c76fc2d420f0214df9184c4c8a97ea75c9969c021bab81cf9"

      define_method(:install) do
        bin.install "special"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/LabLeaks/special/releases/download/v0.4.0/special-cli-aarch64-apple-darwin.tar.xz"
      sha256 "d52645eca9ccaa8a898a39e85893ea20c2ba48980548e123c7acea008b3851c8"

      define_method(:install) do
        bin.install "special"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/LabLeaks/special/releases/download/v0.4.0/special-cli-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "68aa103b1bcd66e5b16a54d51a4de9d2776233eee16fb59d89aeb442c77e9be1"

      define_method(:install) do
        bin.install "special"
      end
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/LabLeaks/special/releases/download/v0.4.0/special-cli-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "dc720938c2feaffee28fccedebe0a6c2e0833d18cdc76f03a2863f91529c0d34"

      define_method(:install) do
        bin.install "special"
      end
    end
  end

  test do
    system "#{bin}/special", "--help"
  end
end
