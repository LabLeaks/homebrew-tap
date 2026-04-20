# typed: false
# frozen_string_literal: true

class Special < Formula
  desc "Repo-native semantic spec tool"
  homepage "https://github.com/LabLeaks/special"
  version "0.6.0"

  archive = on_system_conditional(
    macos: on_arch_conditional(
      arm: "special-cli-aarch64-apple-darwin.tar.xz",
      intel: "special-cli-x86_64-apple-darwin.tar.xz",
    ),
    linux: on_arch_conditional(
      arm: "special-cli-aarch64-unknown-linux-gnu.tar.xz",
      intel: "special-cli-x86_64-unknown-linux-gnu.tar.xz",
    ),
  )
  url "https://github.com/LabLeaks/special/releases/download/v0.6.0/#{archive}"
  sha256 on_system_conditional(
    macos: on_arch_conditional(
      arm: "d69f0e3b8378335d9b7ab5259b36b4d0d79c731be4020321441143185f7402ba",
      intel: "02a29faf85e50df78184a6f5fbbd1addc71c10bcc41f81c594a6f3a0690bc55e",
    ),
    linux: on_arch_conditional(
      arm: "5b0dc79c6903060e8cb9cd155bab4079f40568050c5a7db3757dbb3640b95b23",
      intel: "274ac51c9f32797218fd1a660d6265f1abdfc0db06e4e24ca920451587e9e40a",
    ),
  )

  def install
    bin.install "special"
  end

  test do
    system "#{bin}/special", "--help"
  end
end
