class Libthai < Formula
  desc "LibThai is a set of Thai language support routines aimed to ease
developers' tasks to incorporate Thai language support in their
applications."
  homepage "https://linux.thai.net/projects/libthai/"
  url "https://github.com/tlwg/libthai/releases/download/v0.1.28/libthai-0.1.28.tar.xz"
  sha256 "ffe0a17b4b5aa11b153c15986800eca19f6c93a4025ffa5cf2cab2dcdf1ae911"
  depends_on "libdatrie" => :build
  depends_on "pkg-config" => :build

  def install
    system "./configure", "--disable-debug",
                           "--disable-dependency-tracking",
                           "--prefix=#{prefix}",
                           "--enable-shared"
    system "make install-am"
    system "make install-strip"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test libthai`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
