# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kustomizer < Formula
  desc "Kustomizer CLI"
  homepage "https://kustomizer.dev/"
  version "2.0.0-rc.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stefanprodan/kustomizer/releases/download/v2.0.0-rc.1/kustomizer_2.0.0-rc.1_darwin_arm64.tar.gz"
      sha256 "c42fc2a4f748fb66c2c89c825b104dd7f762db97d76ae8f81e1637df7e83cdff"

      def install
        bin.install "kustomizer"
        bash_output = Utils.safe_popen_read(bin/"kustomizer", "completion", "bash")
        (bash_completion/"kustomizer").write bash_output
        zsh_output = Utils.safe_popen_read(bin/"kustomizer", "completion", "zsh")
        (zsh_completion/"_kustomizer").write zsh_output
        fish_output = Utils.safe_popen_read(bin/"kustomizer", "completion", "fish")
        (fish_completion/"kustomizer.fish").write fish_output
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/stefanprodan/kustomizer/releases/download/v2.0.0-rc.1/kustomizer_2.0.0-rc.1_darwin_amd64.tar.gz"
      sha256 "89ce498c70365798ef5b7b4eb75c224c2db90af642f4887e488893308e54b012"

      def install
        bin.install "kustomizer"
        bash_output = Utils.safe_popen_read(bin/"kustomizer", "completion", "bash")
        (bash_completion/"kustomizer").write bash_output
        zsh_output = Utils.safe_popen_read(bin/"kustomizer", "completion", "zsh")
        (zsh_completion/"_kustomizer").write zsh_output
        fish_output = Utils.safe_popen_read(bin/"kustomizer", "completion", "fish")
        (fish_completion/"kustomizer.fish").write fish_output
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/stefanprodan/kustomizer/releases/download/v2.0.0-rc.1/kustomizer_2.0.0-rc.1_linux_amd64.tar.gz"
      sha256 "fb94b06f0616272c16a3a1dc71e3e64befa45a57f56bac0d8595b22bee44e470"

      def install
        bin.install "kustomizer"
        bash_output = Utils.safe_popen_read(bin/"kustomizer", "completion", "bash")
        (bash_completion/"kustomizer").write bash_output
        zsh_output = Utils.safe_popen_read(bin/"kustomizer", "completion", "zsh")
        (zsh_completion/"_kustomizer").write zsh_output
        fish_output = Utils.safe_popen_read(bin/"kustomizer", "completion", "fish")
        (fish_completion/"kustomizer.fish").write fish_output
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/stefanprodan/kustomizer/releases/download/v2.0.0-rc.1/kustomizer_2.0.0-rc.1_linux_arm64.tar.gz"
      sha256 "ec7acd657ad799bbf5324951838a93b5c426551a8352607797d686de8cbec585"

      def install
        bin.install "kustomizer"
        bash_output = Utils.safe_popen_read(bin/"kustomizer", "completion", "bash")
        (bash_completion/"kustomizer").write bash_output
        zsh_output = Utils.safe_popen_read(bin/"kustomizer", "completion", "zsh")
        (zsh_completion/"_kustomizer").write zsh_output
        fish_output = Utils.safe_popen_read(bin/"kustomizer", "completion", "fish")
        (fish_completion/"kustomizer.fish").write fish_output
      end
    end
  end

  depends_on "diffutils" => :optional

  test do
    system "#{bin}/kustomizer --version"
  end
end
