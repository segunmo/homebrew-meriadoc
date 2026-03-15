class Meriadoc < Formula
  desc "Discover, validate, and run tasks, jobs, and shells from project spec files"
  homepage "https://github.com/segunmo/meriadoc"
  version "0.1.0"
  license "MIT OR Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/segunmo/meriadoc/releases/download/v0.1.0/meriadoc-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "dist/meriadoc-v0.1.0-aarch64-apple-darwin.tar.gz.sha256:257df56960a8a422e7425d9f9747d5dffd5e3df322b4e81f61fed7b0954e3c05"
    else
      url "https://github.com/segunmo/meriadoc/releases/download/v0.1.0/meriadoc-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "dist/meriadoc-v0.1.0-x86_64-apple-darwin.tar.gz.sha256:e44a4485eb99731c5d730d7aef8dbb982896819eb0d2c9de7cf4d5c97870597e"
    end
  end

  def install
    bin.install "meriadoc"
    generate_completions_from_executable(bin/"meriadoc", "completions")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/meriadoc --version")
  end
end
