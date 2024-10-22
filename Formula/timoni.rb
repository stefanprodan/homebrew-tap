# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Timoni < Formula
  desc "Timoni CLI"
  homepage "https://timoni.sh"
  version "0.22.1"

  depends_on "cue" => :optional
  depends_on "diffutils" => :optional

  on_macos do
    on_intel do
      url "https://github.com/stefanprodan/timoni/releases/download/v0.22.1/timoni_0.22.1_darwin_amd64.tar.gz"
      sha256 "40ff6f936b19153bda8f908ec527d930ce6427764d43090034e9c0083bbf9212"

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
    on_arm do
      url "https://github.com/stefanprodan/timoni/releases/download/v0.22.1/timoni_0.22.1_darwin_arm64.tar.gz"
      sha256 "ee1bd9c043d6bacbe72fe0aed6ae5ab9406592002a2587e4d8b2907abc821973"

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
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/stefanprodan/timoni/releases/download/v0.22.1/timoni_0.22.1_linux_amd64.tar.gz"
        sha256 "9f3ba1c55065e1360807ab77b0db1b105d725235068a67f58141df0dcb5217db"

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
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/stefanprodan/timoni/releases/download/v0.22.1/timoni_0.22.1_linux_arm64.tar.gz"
        sha256 "65f2362cdbf3f10616024e027aea389f330b5ec5aff627437a913e420430fdc7"

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
  end

  test do
    system "#{bin}/timoni version"
  end
end
