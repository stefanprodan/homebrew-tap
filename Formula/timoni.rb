# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Timoni < Formula
  desc "Timoni CLI"
  homepage "https://timoni.sh"
  version "0.11.1"

  depends_on "cue" => :optional
  depends_on "diffutils" => :optional

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/stefanprodan/timoni/releases/download/v0.11.1/timoni_0.11.1_darwin_amd64.tar.gz"
      sha256 "5b0aca5fe1723b88149b04a16aafad7a42718f4618fd7915e04113ea351ed0e6"

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
      url "https://github.com/stefanprodan/timoni/releases/download/v0.11.1/timoni_0.11.1_darwin_arm64.tar.gz"
      sha256 "88fdba0817f2a3d65eb1dc2aa14be36f85acba8a2fdf0e4318845446e7f33019"

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
      url "https://github.com/stefanprodan/timoni/releases/download/v0.11.1/timoni_0.11.1_linux_arm64.tar.gz"
      sha256 "6160ecec4a5d822b52ff84cda7c69001de32c302522df2b75fb8998393621210"

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
      url "https://github.com/stefanprodan/timoni/releases/download/v0.11.1/timoni_0.11.1_linux_amd64.tar.gz"
      sha256 "02dcc6888b9d66809747a317e4b38938f3e0621cba189d8284d7f5df8b5d099b"

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
