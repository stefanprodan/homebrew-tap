# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Timoni < Formula
  desc "Timoni CLI"
  homepage "https://timoni.sh"
  version "0.21.0"

  depends_on "cue" => :optional
  depends_on "diffutils" => :optional

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/stefanprodan/timoni/releases/download/v0.21.0/timoni_0.21.0_darwin_amd64.tar.gz"
      sha256 "386527a9be5a075617c07d4f74e9c22bba2edd38e543225c4d86d70babd31690"

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
      url "https://github.com/stefanprodan/timoni/releases/download/v0.21.0/timoni_0.21.0_darwin_arm64.tar.gz"
      sha256 "bdecc1fccc114d27e8d2de2c95192c3820c109a75480b4b34ac37873dad17178"

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
    if Hardware::CPU.intel?
      url "https://github.com/stefanprodan/timoni/releases/download/v0.21.0/timoni_0.21.0_linux_amd64.tar.gz"
      sha256 "d3886d95647287898080ac72fd322b68587504679c526f72718cab45fc366e8a"

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
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/stefanprodan/timoni/releases/download/v0.21.0/timoni_0.21.0_linux_arm64.tar.gz"
      sha256 "864fc8fe5ebe7b4f78ca2dccc60103f5af3c965fc787c3e677cf6c50df848cb7"

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
