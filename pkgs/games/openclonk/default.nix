{ fetchurl, stdenv, cmake, libX11, libXrandr, SDL, libjpeg, mesa, boost}:

stdenv.mkDerivation rec {
  name = "openclonk-${version}";
  version = "6.0";

  src = fetchurl {
    url = "http://www.openclonk.org/builds/release/6.0/openclonk-6.0-src.tar.bz2";
    sha256 = "0j02dbab24gxyv9c8hbx31115kn2k4kc2mzh00q9q8saq48i09w9";
  };

  buildInputs = [ cmake libX11 libXrandr SDL libjpeg mesa boost];

  meta = {
    description = "Free multiplayer action game in which you control clonks, small humanoid beings";
    homepage = http://www.openclonk.org/;
    platforms = stdenv.lib.platforms.linux;
    license = stdenv.lib.licenses.isc;
  };
}
