# typed: false
# frozen_string_literal: true

class Projector < Formula
  desc "Private context sync and restore CLI"
  homepage "https://github.com/LabLeaks/projector"
  version "0.2.0"

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
  url "https://github.com/LabLeaks/projector/releases/download/v0.2.0/#{archive}"
  sha256 on_system_conditional(
    macos: on_arch_conditional(
      arm: "1913023489015e4415bfaa0bf1b0bd17cb25f20055f1d5dadd6c2d6fb644b0c5",
      intel: "6c7b674f70ef526227e7096aff52104580848fed807ad0df12609f8744da659e",
    ),
    linux: on_arch_conditional(
      arm: "6e330498fb667560f22f4fb300329c672da94585df3fdd7dd3074ba22204ca98",
      intel: "6f50b49703bd42fe08879952dfcc7f48697320529fcc6eb2d592c0c35eb022a6",
    ),
  )

  def install
    bin.install "projector"
  end

  test do
    system "#{bin}/projector", "--help"
  end
end
