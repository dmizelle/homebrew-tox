require 'formula'

class Libtoxcore < Formula
  head "git://github.com/irungentoo/ProjectTox-Core", :using => :git
  homepage "http://tox.im"

  depends_on "libsodium"
  depends_on "autoconf"
  depends_on "automake"
  depends_on "libconfig"
  depends_on "libtool"
  depends_on "check"
  depends_on "pkg-config"
  depends_on "opus"
  depends_on "libvpx"

  def install
    system "autoreconf", "-i"
    system "./configure", "--prefix=#{prefix}", "--disable-ntox", "--enable-av"
    system "make"
    system "make", "install"
  end
end
