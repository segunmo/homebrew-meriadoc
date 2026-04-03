class Meriadoc < Formula
  desc "Discover, validate, and run tasks, jobs, and shells from project spec files"
  homepage "https://github.com/segunmo/meriadoc"
  version "0.1.3"
  license "MIT OR Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/segunmo/meriadoc/releases/download/v0.1.3/meriadoc-v0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "533837bcbb6315850f2955d6bd5c945887ee87d8fbf589723368c49ef8808590"
    else
      url "https://github.com/segunmo/meriadoc/releases/download/v0.1.3/meriadoc-v0.1.3-x86_64-apple-darwin.tar.gz"
      sha256 "98ba86232c01c308eb7255b2290f4a7d7a1543bd7c6ec46fbcff4f690da07510"
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
