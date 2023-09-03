# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Timoni < Formula
  desc "Timoni CLI"
  homepage "https://timoni.sh"
  version "0.12.0"

  depends_on "cue" => :optional
  depends_on "diffutils" => :optional

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/stefanprodan/timoni/releases/download/v0.12.0/timoni_0.12.0_darwin_amd64.tar.gz"
      sha256 "7b35cdc3cc29370e58ccb0553bd5d405fd8024f7376fba0ad1c18c8103b3b0c8"

      def install
        bin.install "timoni"
        bash_output = Utils.safe_popen_read(bin/"timoni", "completion", "bash")
        (bash_completion/"timoni").write bash_output
        zsh_output = Utils.safe_popen_read(bin/"timoni", "completion", "zsh")
        (zsh_completion/"timoni").write zsh_output
        fish_output = Utils.safe_popen_read(bin/"timoni", "completion", "fish")
        (fish_completion/"timoni.fish").write fish_output
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/stefanprodan/timoni/releases/download/v0.12.0/timoni_0.12.0_darwin_arm64.tar.gz"
      sha256 "a322f55d953a1f4f05438a305611759759eaa7c75494d54491afb88613d1af3e"

      def install
        bin.install "timoni"
        bash_output = Utils.safe_popen_read(bin/"timoni", "completion", "bash")
        (bash_completion/"timoni").write bash_output
        zsh_output = Utils.safe_popen_read(bin/"timoni", "completion", "zsh")
        (zsh_completion/"timoni").write zsh_output
        fish_output = Utils.safe_popen_read(bin/"timoni", "completion", "fish")
        (fish_completion/"timoni.fish").write fish_output
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/stefanprodan/timoni/releases/download/v0.12.0/timoni_0.12.0_linux_arm64.tar.gz"
      sha256 "cdd57c96074aa7e0d17201d47b4ee209b602cb030174f7b02a56cafb09ec2eed"

      def install
        bin.install "timoni"
        bash_output = Utils.safe_popen_read(bin/"timoni", "completion", "bash")
        (bash_completion/"timoni").write bash_output
        zsh_output = Utils.safe_popen_read(bin/"timoni", "completion", "zsh")
        (zsh_completion/"timoni").write zsh_output
        fish_output = Utils.safe_popen_read(bin/"timoni", "completion", "fish")
        (fish_completion/"timoni.fish").write fish_output
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/stefanprodan/timoni/releases/download/v0.12.0/timoni_0.12.0_linux_amd64.tar.gz"
      sha256 "d0f68cacd6394dca0e2376a13f482029e6ee99cfee73ddca68164a4143b3eee7"

      def install
        bin.install "timoni"
        bash_output = Utils.safe_popen_read(bin/"timoni", "completion", "bash")
        (bash_completion/"timoni").write bash_output
        zsh_output = Utils.safe_popen_read(bin/"timoni", "completion", "zsh")
        (zsh_completion/"timoni").write zsh_output
        fish_output = Utils.safe_popen_read(bin/"timoni", "completion", "fish")
        (fish_completion/"timoni.fish").write fish_output
      end
    end
  end

  test do
    system "#{bin}/timoni version"
  end
end
