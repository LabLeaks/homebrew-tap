# typed: false
# frozen_string_literal: true

class Special < Formula
  desc "Repo-native semantic spec tool"
  homepage "https://github.com/LabLeaks/special"
  version "0.7.1"

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
  url "https://github.com/LabLeaks/special/releases/download/v0.7.1/#{archive}"
  sha256 on_system_conditional(
    macos: on_arch_conditional(
      arm: "129b5f852aae6129137ec8295fbc9b08de0eb98f64a24e96db41ad65645e7b7f",
      intel: "ec2990ba2e199df259b461da292ef8d7cb8ffc9f2533f70323d43acb98386566",
    ),
    linux: on_arch_conditional(
      arm: "0078e66fb39fdcbbc0e02015a474c5e2549bb62727c0ede1653fae217374280d",
      intel: "c261475dcae3614eb6401585266abdfde96ad74b66e0f0714309847c55da6577",
    ),
  )

  def install
    bin.install "special"
  end

  test do
    system "#{bin}/special", "--help"
  end
end
