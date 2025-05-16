class Note < Formula
  include Language::Python::Virtualenv

  desc "Simple CLI note-taking tool"
  homepage "https://github.com/emfleak/note"
  url "https://github.com/emfleak/note/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "..."  # keep existing value
  license "MIT"

  depends_on "python@3.12"

  resource "colorama" do
    url "https://files.pythonhosted.org/packages/58/68/3c0e8785f2e1d3ad2b1be91e2894d02fc445c2048a28905cb092a6bb6b63/colorama-0.4.6.tar.gz"
    sha256 "e96e3e6f5fc55b766bee7fba6c381f4999d0fc2f357788d452c6c5a5192f3c88"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "Usage", shell_output("#{bin}/note --help")
  end
end
