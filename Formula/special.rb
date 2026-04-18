# typed: false
# frozen_string_literal: true

class Special < Formula
  desc "Repo-native semantic spec tool"
  homepage "https://github.com/LabLeaks/special"
  version "0.5.0"

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
  url "https://github.com/LabLeaks/special/releases/download/v0.5.0/#{archive}"
  sha256 on_system_conditional(
    macos: on_arch_conditional(
      arm: "dde730ddddd77c40087753af15cc95959c6410f0c7d38ec7d9678dd37daed474",
      intel: "2f10965ba647ac9ac3747057c95c646a218a2f31cd2d17fe837502196f4094e8",
    ),
    linux: on_arch_conditional(
      arm: "a1c331a0d468955e0af5d4f1a3af45543a6d26d91d70d449ae0aa7fd3ea55fed",
      intel: "3decaa3f212444e16da4d3984eacdd4ca19830c1d180b5f7f87059c3c83bf950",
    ),
  )

  def install
    bin.install "special"
  end

  test do
    system "#{bin}/special", "--help"
  end
end
