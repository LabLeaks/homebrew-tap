# typed: false
# frozen_string_literal: true

class Special < Formula
  desc "Repo-native semantic spec tool"
  homepage "https://github.com/LabLeaks/special"
  version "0.4.1"

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
  url "https://github.com/LabLeaks/special/releases/download/v0.4.1/#{archive}"
  sha256 on_system_conditional(
    macos: on_arch_conditional(
      arm: "34ce43dc8dfdfa74d5b456c44347c1817bbc3ff5ad3b35fd34e51275dfde91e6",
      intel: "00b61f5a14d0b17689b7ddbc3afccafd297a77942f426d17e884ef35c2dcb2ff",
    ),
    linux: on_arch_conditional(
      arm: "8e7bd1dd1b0f4c8f5a795942d131e8141a53fc25ce9cf9a53201fb86a5253584",
      intel: "18358f2f46d91af9e8e131faf5a7953e4b98d054394bcd139d45448a3b567c88",
    ),
  )

  def install
    bin.install "special"
  end

  test do
    system "#{bin}/special", "--help"
  end
end
