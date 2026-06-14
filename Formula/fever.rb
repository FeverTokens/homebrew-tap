# typed: false
# frozen_string_literal: true

# Homebrew formula for the Fever CLI — published from
# https://github.com/FeverTokens/fever-cli (also on JSR as @fevertokens/cli).
class Fever < Formula
  desc "Smart contract development tool for EIP-2535 Diamond / POF packages"
  homepage "https://github.com/FeverTokens/fever-cli"
  version "0.1.7"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/FeverTokens/fever-cli/releases/download/v0.1.7/fever-macos-aarch64"
      sha256 "926e5ef02475b31bd2251f2f8aecb102a9aad9615ffd53689065bafc46b9fd28"
    end
    on_intel do
      url "https://github.com/FeverTokens/fever-cli/releases/download/v0.1.7/fever-macos-x86_64"
      sha256 "a25f4b9846016d879345aa681f05cd0f14884fe7fb9d1f6d540885fa711a66cf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/FeverTokens/fever-cli/releases/download/v0.1.7/fever-linux-aarch64"
      sha256 "8d25adb910e7d35f02382e674b6d9f07d37b33c87d09eab9225d5666ac694c3c"
    end
    on_intel do
      url "https://github.com/FeverTokens/fever-cli/releases/download/v0.1.7/fever-linux-x86_64"
      sha256 "c0a9962a377d61e27a81e934f55a08e6195bbf475dd92d8d6dcba59550ab32bd"
    end
  end

  def install
    # The release ships single-file Deno-compiled binaries; whichever one we
    # downloaded lands here under its original name. Rename it to `fever`.
    binary = Dir["fever-*"].first
    odie "Expected a single fever-* binary in the staging dir" if binary.nil?
    bin.install binary => "fever"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fever --version")
  end
end
