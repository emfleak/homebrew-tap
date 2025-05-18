class Note < Formula
  include Language::Python::Virtualenv

  desc "Simple CLI note-taking tool"
  homepage "https://github.com/emfleak/note"
  url "https://github.com/emfleak/note/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "6e85a853af67e2354fbbb2de1dc68c001be0424d65993982aa09cc6c8251638f"
  license "MIT"

  depends_on "python@3.12"

  resource "colorama" do
    url "https://files.pythonhosted.org/packages/d8/53/6f443c9a4a8358a93a6792e2acffb9d9d5cb0a5cfd8802644b7b1c9a02e4/colorama-0.4.6.tar.gz"
    sha256 "08695f5cb7ed6e0531a20572697297273c47b8cae5a63ffc6d6ed5c201be6e44"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "Usage", shell_output("#{bin}/note --help")
  end
end
