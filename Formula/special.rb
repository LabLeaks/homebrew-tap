# typed: false
# frozen_string_literal: true

class Special < Formula
  desc "Repo-native semantic spec tool"
  homepage "https://github.com/LabLeaks/special"
  version "0.8.0"

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
  url "https://github.com/LabLeaks/special/releases/download/v0.8.0/#{archive}"
  sha256 on_system_conditional(
    macos: on_arch_conditional(
      arm: "a047af4374c383601dba52b6c279e7cff9c4af596c19842061ce2d7d92e715c8",
      intel: "f9cc07824ffc4386f61810379d7308e5e092106ae093f7dcd8919478a22041d7",
    ),
    linux: on_arch_conditional(
      arm: "b8705e92ed62cf2d535fdacc87b462cf6a6b9872744b9cab171f0e622823e418",
      intel: "a4d7a6407fb0ac1987ea5a99868d667ca1d343c7d2f4f4b03c55244a6d5e0966",
    ),
  )

  def install
    bin.install "special"
  end

  test do
    system "#{bin}/special", "--help"
  end
end
