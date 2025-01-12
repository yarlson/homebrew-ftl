# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ftl < Formula
  desc "FTL - Faster Than Light deployment tool"
  homepage "https://github.com/yarlson/ftl"
  version "0.22.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/yarlson/ftl/releases/download/0.22.2/ftl_0.22.2_darwin_amd64.tar.gz"
      sha256 "a630c47eeff9cbea10d385bbbd6e3c3c360ba1a01fda854828cf7be31f1a3215"

      def install
        bin.install "ftl"
      end
    end
    on_arm do
      url "https://github.com/yarlson/ftl/releases/download/0.22.2/ftl_0.22.2_darwin_arm64.tar.gz"
      sha256 "705eed1d9261d4be8d72427a1622d00fe39c86885c5038f3c2c5469795cb7199"

      def install
        bin.install "ftl"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/yarlson/ftl/releases/download/0.22.2/ftl_0.22.2_linux_amd64.tar.gz"
        sha256 "a80771df11cd7519de3ae72fba63ebdc4082d9a997a2b3aa7f67ab82998af270"

        def install
          bin.install "ftl"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/yarlson/ftl/releases/download/0.22.2/ftl_0.22.2_linux_arm64.tar.gz"
        sha256 "8e2e1c1e592ae4246a8c5da6102e09fb4fac15280d05fa031eadd73bfaf69870"

        def install
          bin.install "ftl"
        end
      end
    end
  end

  test do
    system "#{bin}/ftl --version"
  end
end
