# typed: false
# frozen_string_literal: true

class Projector < Formula
  desc "Private context sync and restore CLI"
  homepage "https://github.com/LabLeaks/projector"
  version "0.2.3"

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
  url "https://github.com/LabLeaks/projector/releases/download/v0.2.3/#{archive}"
  sha256 on_system_conditional(
    macos: on_arch_conditional(
      arm: "12b88ae27641b32466cf741c0853b14236449d002bf3cad18c1ef7f502842ef3",
      intel: "ad75916e19cb1787627914ab1dc890477c01d5a525384846197e66686aa9e23a",
    ),
    linux: on_arch_conditional(
      arm: "b5a4e253324400009511a489d38167ff1ccfed86181348f3ac0ab488dd5cc408",
      intel: "12a18dd173f6c0d9234a543dba550a271a29daa95bd2ded714992017630597cb",
    ),
  )

  def install
    bin.install "projector"
  end

  test do
    system "#{bin}/projector", "--help"
  end
end
