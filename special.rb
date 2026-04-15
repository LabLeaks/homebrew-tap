# typed: false
# frozen_string_literal: true

class Special < Formula
  desc "Repo-native semantic spec tool"
  homepage "https://github.com/LabLeaks/special"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/LabLeaks/special/releases/download/v0.3.0/special-cli-x86_64-apple-darwin.tar.xz"
      sha256 "fba6321d97347587c0628c1dc7ca3dba0a52541b3ef2f5d4c05dec94c9dd354d"

      define_method(:install) do
        bin.install "special"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/LabLeaks/special/releases/download/v0.3.0/special-cli-aarch64-apple-darwin.tar.xz"
      sha256 "6ef41be8676848c3ea9fa15aa96305612e5306915194446dbba057b870afec96"

      define_method(:install) do
        bin.install "special"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/LabLeaks/special/releases/download/v0.3.0/special-cli-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "2529866379fa54a8f9abc51b2b047be642fbb2d3d32fb6837aec0f812323124c"

      define_method(:install) do
        bin.install "special"
      end
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/LabLeaks/special/releases/download/v0.3.0/special-cli-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "0641351edc3366d5a60fbe035c13e6d66bc6c65bc23528bf4a059a60713c5207"

      define_method(:install) do
        bin.install "special"
      end
    end
  end

  test do
    system "#{bin}/special", "--help"
  end
end
