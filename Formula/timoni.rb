# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Timoni < Formula
  desc "Timoni CLI"
  homepage "https://timoni.sh"
  version "0.5.0"

  depends_on "cue" => :optional
  depends_on "diffutils" => :optional

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stefanprodan/timoni/releases/download/v0.5.0/timoni_0.5.0_darwin_arm64.tar.gz"
      sha256 "4b6056afa84e5aa6fd9c4a665cf5b56ad6a5db1c34485a3ec2fc0416b6bc290a"

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
      url "https://github.com/stefanprodan/timoni/releases/download/v0.5.0/timoni_0.5.0_darwin_amd64.tar.gz"
      sha256 "30cd96a5b9fc8f27f109226be730b7acbd4bf62414e3c89de3eedb9a99012d8f"

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
      url "https://github.com/stefanprodan/timoni/releases/download/v0.5.0/timoni_0.5.0_linux_arm64.tar.gz"
      sha256 "7d35d4ae400b2a0a666f43d8decad1909b8818bec503df1a883390e41ac53889"

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
      url "https://github.com/stefanprodan/timoni/releases/download/v0.5.0/timoni_0.5.0_linux_amd64.tar.gz"
      sha256 "ad88d766f2472a0384727fa543dece99406f4071c1a5b0745c16861ac612f996"

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
