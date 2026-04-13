# typed: false
# frozen_string_literal: true

class Special < Formula
  desc "Repo-native semantic spec tool"
  homepage "https://github.com/LabLeaks/special"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/LabLeaks/special/releases/download/v0.1.0/special-cli-x86_64-apple-darwin.tar.xz"
      sha256 "c6eb6dfb034377ff8fe68dcc364bf45c12244d41bd0f5b3f89f4d77fff00d238"

      define_method(:install) do
        bin.install "special"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/LabLeaks/special/releases/download/v0.1.0/special-cli-aarch64-apple-darwin.tar.xz"
      sha256 "59e394b6bef3bf1eba7577bca1755a740de74e7c06a873c34a1e76645dca802f"

      define_method(:install) do
        bin.install "special"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/LabLeaks/special/releases/download/v0.1.0/special-cli-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "8b91107cb8046c6ad4363a3aa0318bc5b2e79d1fc559ca45206fb11e832ffb72"

      define_method(:install) do
        bin.install "special"
      end
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/LabLeaks/special/releases/download/v0.1.0/special-cli-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "ee13029812c4bc6beb59eb2b3733a8894a47b0e49416da0fe1309ac803cf136e"

      define_method(:install) do
        bin.install "special"
      end
    end
  end

  test do
    system "#{bin}/special", "--help"
  end
end
