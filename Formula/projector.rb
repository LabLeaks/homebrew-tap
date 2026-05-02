# typed: false
# frozen_string_literal: true

class Projector < Formula
  desc "Private context sync and restore CLI"
  homepage "https://github.com/LabLeaks/projector"
  version "0.2.2"

  archive = on_system_conditional(
    macos: on_arch_conditional(
      arm: "projector-cli-aarch64-apple-darwin.tar.xz",
      intel: "projector-cli-x86_64-apple-darwin.tar.xz",
    ),
    linux: on_arch_conditional(
      arm: "projector-cli-aarch64-unknown-linux-gnu.tar.xz",
      intel: "projector-cli-x86_64-unknown-linux-gnu.tar.xz",
    ),
  )
  url "https://github.com/LabLeaks/projector/releases/download/v0.2.2/#{archive}"
  sha256 on_system_conditional(
    macos: on_arch_conditional(
      arm: "7c251b408b11bdb0023a0bb84eb9d803e2fecf99c082d29eb8b0587782834447",
      intel: "8849bde77c8ec39446506f13b09479bb72676a74d191ce1bc570c2437ef11ac6",
    ),
    linux: on_arch_conditional(
      arm: "ce0f4badf3a9cf2da086249bedd4076d65b2b31b918af3f938c9ddfc322b45ee",
      intel: "b62e336b772bfd30833985f9e13bdb21a1d449e671049b9f719e504f9e3fb67c",
    ),
  )

  def install
    bin.install "projector"
  end

  test do
    system "#{bin}/projector", "--help"
  end
end
