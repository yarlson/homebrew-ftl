# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ftl < Formula
  desc "FTL - Faster Than Light deployment tool"
  homepage "https://github.com/yarlson/ftl"
  version "0.20.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/yarlson/ftl/releases/download/0.20.0/ftl_0.20.0_darwin_amd64.tar.gz"
      sha256 "678aedf0e45da039289efa6db750498224f4868039edaf0c0d01b1e95afa5538"

      def install
        bin.install "ftl"
      end
    end
    on_arm do
      url "https://github.com/yarlson/ftl/releases/download/0.20.0/ftl_0.20.0_darwin_arm64.tar.gz"
      sha256 "89dda9a266043eff3c7a80f9abe8207c45313a11c0475fc33bdd41c52a66f801"

      def install
        bin.install "ftl"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/yarlson/ftl/releases/download/0.20.0/ftl_0.20.0_linux_amd64.tar.gz"
        sha256 "9edffbd5a1bae7ca8e368fecd5f952bd30f411caae229a4fb7675f158633088c"

        def install
          bin.install "ftl"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/yarlson/ftl/releases/download/0.20.0/ftl_0.20.0_linux_arm64.tar.gz"
        sha256 "bfd7ec0749e9773b501d7dd54bb73ca92c8428c7df8b93332ef98039b8b22884"

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
