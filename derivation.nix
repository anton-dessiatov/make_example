{ stdenv, lib, cmake, boost, gtest }:

stdenv.mkDerivation {
  name = "make-example";
  src =
    let exclude = path: type:
        let base = baseNameOf path;
            isExcludedDir = type == "directory" && builtins.elem base [ "build" ];
            hasDotPrefix = lib.hasPrefix "." base;
        in  isExcludedDir || hasDotPrefix;
    in  builtins.filterSource (path: type: !exclude path type) ./.;

  nativeBuildInputs = [];
  # nativeBuildInputs = [ gnumake ];
}

