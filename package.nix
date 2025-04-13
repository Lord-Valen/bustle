{buildNpmPackage, lib,}:
let json = lib.importJSON ./package.json;
in
buildNpmPackage {
  pname = "yomi-bustle";
  version = json.version;

  src = lib.sources.sourceFilesBySuffices ./. [
    ".js"
    ".ts"
    ".json"
  ];

  npmDepsHash = "sha256-LVibu7d8xEM1TIZSjlcLbpGh7lmrP+wkUwE06v4UG58=";

  meta = {
    mainProgram = "bustle";
    license = lib.licenses.unfree;
  };
}