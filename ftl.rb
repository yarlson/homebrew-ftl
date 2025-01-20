# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ftl < Formula
  desc "FTL - Faster Than Light deployment tool"
  homepage "https://github.com/yarlson/ftl"
  version "0.26.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/yarlson/ftl/releases/download/0.26.1/ftl_0.26.1_darwin_amd64.tar.gz"
      sha256 "5d02903b5684a47e060c361fc91f1e0ecec391a8d5a3706f1e38da87563a6e8b"

      def install
        bin.install "ftl"
      end
    end
    on_arm do
      url "https://github.com/yarlson/ftl/releases/download/0.26.1/ftl_0.26.1_darwin_arm64.tar.gz"
      sha256 "a18e674c97e2ed02fae9d73875c3e1261a956188abe45e4208e87a6ba65e4fa3"

      def install
        bin.install "ftl"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/yarlson/ftl/releases/download/0.26.1/ftl_0.26.1_linux_amd64.tar.gz"
        sha256 "235c0842f6a74a0fd0f6b9642418933de2f235c85fb50ccc768d5fd7d38e07d9"

        def install
          bin.install "ftl"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/yarlson/ftl/releases/download/0.26.1/ftl_0.26.1_linux_arm64.tar.gz"
        sha256 "2effc5b7a18bd0ca50eae94bc332e8058474ee723a52c918bf57cccec544cfba"

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
