# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ftl < Formula
  desc "FTL - Faster Than Light deployment tool"
  homepage "https://github.com/yarlson/ftl"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/yarlson/ftl/releases/download/0.8.0/ftl_0.8.0_darwin_amd64.tar.gz"
      sha256 "65003bbac7d93dcdc528e1cebf793c18af0d04feaf7da8557bb984d267c5ee9e"

      def install
        bin.install "ftl"
      end
    end
    on_arm do
      url "https://github.com/yarlson/ftl/releases/download/0.8.0/ftl_0.8.0_darwin_arm64.tar.gz"
      sha256 "44518252393c0c40994220b3ae056ada8eb349947872045273649c6864dab0d0"

      def install
        bin.install "ftl"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/yarlson/ftl/releases/download/0.8.0/ftl_0.8.0_linux_amd64.tar.gz"
        sha256 "aa449b5936c94272ca8c81dade6b4967bfa2ec36f130bbbdb8955868bb867760"

        def install
          bin.install "ftl"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/yarlson/ftl/releases/download/0.8.0/ftl_0.8.0_linux_arm64.tar.gz"
        sha256 "e50c0a963240609455e3c4a0c9629433cca0ad156cd9802b0c4a676ef7705f54"

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
