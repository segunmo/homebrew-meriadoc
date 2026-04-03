class Meriadoc < Formula
  desc "Discover, validate, and run tasks, jobs, and shells from project spec files"
  homepage "https://github.com/segunmo/meriadoc"
  version "0.1.2"
  license "MIT OR Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/segunmo/meriadoc/releases/download/v0.1.2/meriadoc-v0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "b7684623fc279b77c601c96c133df95c890b3e56b84c24d89da240fa6ad09c71"
    else
      url "https://github.com/segunmo/meriadoc/releases/download/v0.1.2/meriadoc-v0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "2f265982aeedb9d4eec9c2610a71ba67d9fa7b041bb7e8ca6aa8ab4990f8056b"
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
