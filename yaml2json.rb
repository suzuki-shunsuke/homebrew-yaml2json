# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Yaml2json < Formula
  desc "Convert YAML to JSON
"
  homepage "https://github.com/suzuki-shunsuke/yaml2json"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/suzuki-shunsuke/yaml2json/releases/download/v0.2.0/yaml2json_darwin_arm64.tar.gz"
      sha256 "cfeb1d915aa759301869965a8ede959ff827446400bd41191bf6295d2c4e7432"

      def install
        bin.install "yaml2json"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/suzuki-shunsuke/yaml2json/releases/download/v0.2.0/yaml2json_darwin_amd64.tar.gz"
      sha256 "6bceff0cf4290bfb600fffb318160a8851f01aa6d1a1dd4b0a82425d7b9ae6b7"

      def install
        bin.install "yaml2json"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/suzuki-shunsuke/yaml2json/releases/download/v0.2.0/yaml2json_linux_arm64.tar.gz"
      sha256 "963fb55372c83dd206156dafe7ff2577643e2112736139ce12f7609555ea0533"

      def install
        bin.install "yaml2json"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/suzuki-shunsuke/yaml2json/releases/download/v0.2.0/yaml2json_linux_amd64.tar.gz"
      sha256 "d82147d45efc4b9891904121111509856fb1c93cb2798febf46dee671a04f9d6"

      def install
        bin.install "yaml2json"
      end
    end
  end

  test do
    system "#{bin}/yaml2json --version"
  end
end
