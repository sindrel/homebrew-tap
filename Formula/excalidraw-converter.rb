# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ExcalidrawConverter < Formula
  desc "A command line tool for porting Excalidraw diagrams to Gliffy."
  homepage "https://github.com/sindrel/excalidraw-converter"
  version "1.0.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/sindrel/excalidraw-converter/releases/download/v1.0.6/excalidraw-converter_1.0.6_darwin_amd64.tar.gz"
      sha256 "72be25e94cb527063f2f5401d526c07437f596c73aea448fd0b4f782d924153d"

      def install
        bin.install "exconv"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/sindrel/excalidraw-converter/releases/download/v1.0.6/excalidraw-converter_1.0.6_darwin_arm64.tar.gz"
      sha256 "cd227f9ecdc9ecf0cafae25840a0eca4fbd78a14fe988045dae870e17487d4bb"

      def install
        bin.install "exconv"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/sindrel/excalidraw-converter/releases/download/v1.0.6/excalidraw-converter_1.0.6_linux_amd64.tar.gz"
      sha256 "10616c905165115db7b32d139f8570ab0ba67e705b59aa86f4a1312b62669d51"

      def install
        bin.install "exconv"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/sindrel/excalidraw-converter/releases/download/v1.0.6/excalidraw-converter_1.0.6_linux_armv6.tar.gz"
      sha256 "89b9bf9763b5db60b960a086a31a7f46299e3b505bc59904f8139a191ffe639a"

      def install
        bin.install "exconv"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sindrel/excalidraw-converter/releases/download/v1.0.6/excalidraw-converter_1.0.6_linux_arm64.tar.gz"
      sha256 "8628a673f7b709862ad51edf72fcfe6aa351947a7a52b1860997c967d7677f7c"

      def install
        bin.install "exconv"
      end
    end
  end

  test do
    system "#{bin}/exconv version"
  end
end
