# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ftl < Formula
  desc "FTL - Faster Than Light deployment tool"
  homepage "https://github.com/yarlson/ftl"
  version "0.7.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/yarlson/ftl/releases/download/0.7.1/ftl_0.7.1_darwin_amd64.tar.gz"
      sha256 "68da6e845f25de250dbbb612d3b486de33d91a37500e148f5b2b3a2aa105cf72"

      def install
        bin.install "ftl"
      end
    end
    on_arm do
      url "https://github.com/yarlson/ftl/releases/download/0.7.1/ftl_0.7.1_darwin_arm64.tar.gz"
      sha256 "f6c5a8d12467087e593b7d3e8433df2f764af51569ba8eabf9a5fb1c24bcdf98"

      def install
        bin.install "ftl"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/yarlson/ftl/releases/download/0.7.1/ftl_0.7.1_linux_amd64.tar.gz"
        sha256 "600fa03b22f6c40080e2a8ffaeae670773cd92ec1f7858a0fd2174dc19254784"

        def install
          bin.install "ftl"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/yarlson/ftl/releases/download/0.7.1/ftl_0.7.1_linux_arm64.tar.gz"
        sha256 "18f3710ae4e6965f2b1ef9d2e7a4a492031afc8628f2e35612016d05c5cd7add"

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
