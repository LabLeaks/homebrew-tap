# typed: false
# frozen_string_literal: true

class Special < Formula
  desc "Repo-native semantic spec tool"
  homepage "https://github.com/LabLeaks/special"
  version "0.4.0"

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
  url "https://github.com/LabLeaks/special/releases/download/v0.4.0/#{archive}"
  sha256 on_system_conditional(
    macos: on_arch_conditional(
      arm: "d52645eca9ccaa8a898a39e85893ea20c2ba48980548e123c7acea008b3851c8",
      intel: "90b64da5e9103c7c76fc2d420f0214df9184c4c8a97ea75c9969c021bab81cf9",
    ),
    linux: on_arch_conditional(
      arm: "dc720938c2feaffee28fccedebe0a6c2e0833d18cdc76f03a2863f91529c0d34",
      intel: "68aa103b1bcd66e5b16a54d51a4de9d2776233eee16fb59d89aeb442c77e9be1",
    ),
  )

  def install
    bin.install "special"
  end

  test do
    system "#{bin}/special", "--help"
  end
end
