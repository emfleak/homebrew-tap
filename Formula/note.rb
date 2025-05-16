class Note < Formula
  include Language::Python::Virtualenv

  desc "Simple CLI note-taking tool"
  homepage "https://github.com/emfleak/note"
  url "https://github.com/emfleak/note/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "6e85a853af67e2354fbbb2de1dc68c001be0424d65993982aa09cc6c8251638f"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "Usage", shell_output("#{bin}/note --help")
  end
end
