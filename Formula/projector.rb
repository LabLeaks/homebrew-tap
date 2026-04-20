# typed: false
# frozen_string_literal: true

class Projector < Formula
  desc "Private context sync and restore CLI"
  homepage "https://github.com/LabLeaks/projector"
  version "0.2.1"

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
  url "https://github.com/LabLeaks/projector/releases/download/v0.2.1/#{archive}"
  sha256 on_system_conditional(
    macos: on_arch_conditional(
      arm: "d4b8b4e2d429b47e5317aa42319af226f6989bd1030382bd4ee280981199055c",
      intel: "1c10bd6d84261201146efc8ec4ebe5a7a4b2606c1b4bf358d46545644ffde443",
    ),
    linux: on_arch_conditional(
      arm: "815b96521225853db7039ecc9e44beba04dec94d1d8a0e184bec84bcfee0d39f",
      intel: "346b52c30e4741f3b76be20ac77be3c5b54fb9e29c01625549099a79f2439112",
    ),
  )

  def install
    bin.install "projector"
  end

  test do
    system "#{bin}/projector", "--help"
  end
end
