class Meriadoc < Formula
  desc "Discover, validate, and run tasks, jobs, and shells from project spec files"
  homepage "https://github.com/segunmo/meriadoc"
  version "0.1.1"
  license "MIT OR Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/segunmo/meriadoc/releases/download/v0.1.1/meriadoc-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "fce701c9535a75746b50bc6feff85f6447a93b028e9b5eaadd92d4e4a4d6b0f2"
    else
      url "https://github.com/segunmo/meriadoc/releases/download/v0.1.1/meriadoc-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "4a64dcf80adf4157404109ce0ffb0d24ef19e860817f0bc44d34c8470fc4616c"
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
