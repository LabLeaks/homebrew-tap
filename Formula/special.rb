# typed: false
# frozen_string_literal: true

class Special < Formula
  desc "Repo-native semantic spec tool"
  homepage "https://github.com/LabLeaks/special"
  version "0.7.0"

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
  url "https://github.com/LabLeaks/special/releases/download/v0.7.0/#{archive}"
  sha256 on_system_conditional(
    macos: on_arch_conditional(
      arm: "c6e134eb2baa1afdc4a398af4041bed1b00b31e99dbdd85a7e66f7fa6bc6f407",
      intel: "0502d2438cf0485b131b4fd8d5f782c1a47a5db5272fd8ca9811c9cacc58ebe5",
    ),
    linux: on_arch_conditional(
      arm: "158d5905c347bb89bcee79600c0252111ffb4a4229ef2504701c6a477b1335f3",
      intel: "0e271cbbe1f9ce00deebcca169d646c003033af9fc8599a52aa17233ec9b00aa",
    ),
  )

  def install
    bin.install "special"
  end

  test do
    system "#{bin}/special", "--help"
  end
end
