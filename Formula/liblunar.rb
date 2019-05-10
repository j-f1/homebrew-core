class Liblunar < Formula
  desc "Lunar date calendar"
  homepage "https://code.google.com/archive/p/liblunar/"
  url "https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/liblunar/liblunar-2.2.5.tar.gz"
  sha256 "c24a7cd3ccbf7ab739d752a437f1879f62b975b95abcf9eb9e1dd623982bc167"
  revision 1

  bottle do
    rebuild 1
    sha256 "afd8532a1bb69e16cf477c0fa367a458f224496eedcb09bfb6b913dad9760949" => :mojave
    sha256 "e564dbc819eff0246e3594ec3b4434e5ba1b4790bfa3f5d13c326eff019cc136" => :high_sierra
    sha256 "79b9281fa40694eeac3076ef886c8c6c8c3d2a118c538a59b9cb925cbd5775c6" => :sierra
    sha256 "df420ea75e5e22b18dcd1fd49eac3478cd8bae3ec6e3b40d02afe7e253e0354b" => :el_capitan
    sha256 "0964777ae7bbc24c64cab3a1197b5dfa123a08d7e320b4829b9f0a3d1a3cb6be" => :yosemite
    sha256 "9c4abb431abb5c60d1a9beba72f8139255f64d19a02e1994345531c948c72c3d" => :mavericks
  end

  depends_on "intltool" => :build
  depends_on "pkg-config" => :build
  depends_on "gettext"
  depends_on "glib"

  def install
    system "./configure", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make", "install"
  end
end
