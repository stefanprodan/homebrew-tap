# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Timoni < Formula
  desc "Timoni CLI"
  homepage "https://timoni.sh"
  version "0.19.0"

  depends_on "cue" => :optional
  depends_on "diffutils" => :optional

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stefanprodan/timoni/releases/download/v0.19.0/timoni_0.19.0_darwin_arm64.tar.gz"
      sha256 "a187455842d1f33c02c1d3bc07d03cf51beb5b29506e7765f6a146ab6bb423a4"

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
      url "https://github.com/stefanprodan/timoni/releases/download/v0.19.0/timoni_0.19.0_darwin_amd64.tar.gz"
      sha256 "6bcb82e70e098abe25071b24ccea3bd058c3bafbed22ff0f4ea39b5cd8cffaed"

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
      url "https://github.com/stefanprodan/timoni/releases/download/v0.19.0/timoni_0.19.0_linux_arm64.tar.gz"
      sha256 "f9167018bbc36305619d62ebb96ec28ecf28403a7e4020c1ba0c18505647a27a"

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
      url "https://github.com/stefanprodan/timoni/releases/download/v0.19.0/timoni_0.19.0_linux_amd64.tar.gz"
      sha256 "f92e2605bb11fba9224a9d826bcee853c943a2f58c9fff4bc33a20fa37fea73b"

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
