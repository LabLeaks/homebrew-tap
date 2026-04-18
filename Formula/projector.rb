# typed: false
# frozen_string_literal: true

class Projector < Formula
  desc "Private context sync and restore CLI"
  homepage "https://github.com/LabLeaks/projector"
  version "0.1.0"

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
  url "https://github.com/LabLeaks/projector/releases/download/v0.1.0/#{archive}"
  sha256 on_system_conditional(
    macos: on_arch_conditional(
      arm: "b3ccb84bee577573b442be0fecfae2127c0bf254d7d2f867439c00d4dd4ad40d",
      intel: "ba87897f6bc72bc03a7ccaa4f3271f632bb066a53210bf345cf70b44229fb8e9",
    ),
    linux: on_arch_conditional(
      arm: "99684b634f7390cd3f1c46e44a1d468a341109191041b5c2d8a827b738c7429b",
      intel: "4e7ce8a3b933d9854c2694ed764420fc3a03ff0aadfcb1edfce6bf43aa0ff27d",
    ),
  )

  def install
    bin.install "projector"
  end

  test do
    system "#{bin}/projector", "--help"
  end
end
