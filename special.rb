# typed: false
# frozen_string_literal: true

class Special < Formula
  desc "Repo-native semantic spec tool"
  homepage "https://github.com/LabLeaks/special"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/LabLeaks/special/releases/download/v0.2.0/special-cli-x86_64-apple-darwin.tar.xz"
      sha256 "53302930bda299d12ecc115a5daac6485193bac8385460081b129b9dd80014eb"

      define_method(:install) do
        bin.install "special"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/LabLeaks/special/releases/download/v0.2.0/special-cli-aarch64-apple-darwin.tar.xz"
      sha256 "e99b1901a84cd15ed50aa4d9600fdaef4f72cf3361520eb5b7330959e72ca9c5"

      define_method(:install) do
        bin.install "special"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/LabLeaks/special/releases/download/v0.2.0/special-cli-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "9960997f71db16839b714aac0473b564b87abd89be92d2345178f47e021cc961"

      define_method(:install) do
        bin.install "special"
      end
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/LabLeaks/special/releases/download/v0.2.0/special-cli-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "d4e58bc4d0e0d3bd1cd019bd8df747e418718713873320effe2c5387adf92d50"

      define_method(:install) do
        bin.install "special"
      end
    end
  end

  test do
    system "#{bin}/special", "--help"
  end
end
