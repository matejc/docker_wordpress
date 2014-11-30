{ self, fetchurl, fetchgit ? null, lib }:

{
  by-spec."JSONStream"."~0.7.1" =
    self.by-version."JSONStream"."0.7.4";
  by-version."JSONStream"."0.7.4" = lib.makeOverridable self.buildNodePackage {
    name = "node-JSONStream-0.7.4";
    src = [
      (fetchurl {
        url = "http://registry.npmjs.org/JSONStream/-/JSONStream-0.7.4.tgz";
        name = "JSONStream-0.7.4.tgz";
        sha1 = "734290e41511eea7c2cfe151fbf9a563a97b9786";
      })
    ];
    buildInputs =
      (self.nativeDeps."JSONStream" or []);
    deps = [
      self.by-version."jsonparse"."0.0.5"
      self.by-version."through"."2.3.6"
    ];
    peerDependencies = [
    ];
    passthru.names = [ "JSONStream" ];
  };
  by-spec."argparse"."~ 0.1.11" =
    self.by-version."argparse"."0.1.15";
  by-version."argparse"."0.1.15" = lib.makeOverridable self.buildNodePackage {
    name = "node-argparse-0.1.15";
    src = [
      (fetchurl {
        url = "http://registry.npmjs.org/argparse/-/argparse-0.1.15.tgz";
        name = "argparse-0.1.15.tgz";
        sha1 = "28a1f72c43113e763220e5708414301c8840f0a1";
      })
    ];
    buildInputs =
      (self.nativeDeps."argparse" or []);
    deps = [
      self.by-version."underscore"."1.4.4"
      self.by-version."underscore.string"."2.3.3"
    ];
    peerDependencies = [
    ];
    passthru.names = [ "argparse" ];
  };
  by-spec."async"."~0.2.9" =
    self.by-version."async"."0.2.10";
  by-version."async"."0.2.10" = lib.makeOverridable self.buildNodePackage {
    name = "node-async-0.2.10";
    src = [
      (fetchurl {
        url = "http://registry.npmjs.org/async/-/async-0.2.10.tgz";
        name = "async-0.2.10.tgz";
        sha1 = "b6bbe0b0674b9d719708ca38de8c237cb526c3d1";
      })
    ];
    buildInputs =
      (self.nativeDeps."async" or []);
    deps = [
    ];
    peerDependencies = [
    ];
    passthru.names = [ "async" ];
  };
  by-spec."colors"."~0.6.2" =
    self.by-version."colors"."0.6.2";
  by-version."colors"."0.6.2" = lib.makeOverridable self.buildNodePackage {
    name = "node-colors-0.6.2";
    src = [
      (fetchurl {
        url = "http://registry.npmjs.org/colors/-/colors-0.6.2.tgz";
        name = "colors-0.6.2.tgz";
        sha1 = "2423fe6678ac0c5dae8852e5d0e5be08c997abcc";
      })
    ];
    buildInputs =
      (self.nativeDeps."colors" or []);
    deps = [
    ];
    peerDependencies = [
    ];
    passthru.names = [ "colors" ];
  };
  by-spec."core-util-is"."~1.0.0" =
    self.by-version."core-util-is"."1.0.1";
  by-version."core-util-is"."1.0.1" = lib.makeOverridable self.buildNodePackage {
    name = "node-core-util-is-1.0.1";
    src = [
      (fetchurl {
        url = "http://registry.npmjs.org/core-util-is/-/core-util-is-1.0.1.tgz";
        name = "core-util-is-1.0.1.tgz";
        sha1 = "6b07085aef9a3ccac6ee53bf9d3df0c1521a5538";
      })
    ];
    buildInputs =
      (self.nativeDeps."core-util-is" or []);
    deps = [
    ];
    peerDependencies = [
    ];
    passthru.names = [ "core-util-is" ];
  };
  by-spec."debug"."~0.7.4" =
    self.by-version."debug"."0.7.4";
  by-version."debug"."0.7.4" = lib.makeOverridable self.buildNodePackage {
    name = "node-debug-0.7.4";
    src = [
      (fetchurl {
        url = "http://registry.npmjs.org/debug/-/debug-0.7.4.tgz";
        name = "debug-0.7.4.tgz";
        sha1 = "06e1ea8082c2cb14e39806e22e2f6f757f92af39";
      })
    ];
    buildInputs =
      (self.nativeDeps."debug" or []);
    deps = [
    ];
    peerDependencies = [
    ];
    passthru.names = [ "debug" ];
  };
  by-spec."decking"."~0.2.1" =
    self.by-version."decking"."0.2.1";
  by-version."decking"."0.2.1" = lib.makeOverridable self.buildNodePackage {
    name = "decking-0.2.1";
    src = [
      (fetchurl {
        url = "http://registry.npmjs.org/decking/-/decking-0.2.1.tgz";
        name = "decking-0.2.1.tgz";
        sha1 = "cd2525fd281de4bb0b237f9a378dee88a60e5f83";
      })
    ];
    buildInputs =
      (self.nativeDeps."decking" or []);
    deps = [
      self.by-version."async"."0.2.10"
      self.by-version."colors"."0.6.2"
      self.by-version."deptree"."0.1.0"
      self.by-version."dockerode"."1.2.10"
      self.by-version."JSONStream"."0.7.4"
      self.by-version."lodash"."2.4.1"
      self.by-version."read"."1.0.5"
      self.by-version."js-yaml"."3.1.0"
    ];
    peerDependencies = [
    ];
    passthru.names = [ "decking" ];
  };
  "decking" = self.by-version."decking"."0.2.1";
  by-spec."deptree"."~0.1.0" =
    self.by-version."deptree"."0.1.0";
  by-version."deptree"."0.1.0" = lib.makeOverridable self.buildNodePackage {
    name = "node-deptree-0.1.0";
    src = [
      (fetchurl {
        url = "http://registry.npmjs.org/deptree/-/deptree-0.1.0.tgz";
        name = "deptree-0.1.0.tgz";
        sha1 = "2475d83805bbac09b8c79b7c8102cef1c0461d2c";
      })
    ];
    buildInputs =
      (self.nativeDeps."deptree" or []);
    deps = [
    ];
    peerDependencies = [
    ];
    passthru.names = [ "deptree" ];
  };
  by-spec."docker-modem"."0.1.x" =
    self.by-version."docker-modem"."0.1.19";
  by-version."docker-modem"."0.1.19" = lib.makeOverridable self.buildNodePackage {
    name = "node-docker-modem-0.1.19";
    src = [
      (fetchurl {
        url = "http://registry.npmjs.org/docker-modem/-/docker-modem-0.1.19.tgz";
        name = "docker-modem-0.1.19.tgz";
        sha1 = "3506984b4050814dcbfe6d8be8eda784880c7aac";
      })
    ];
    buildInputs =
      (self.nativeDeps."docker-modem" or []);
    deps = [
      self.by-version."debug"."0.7.4"
      self.by-version."follow-redirects"."0.0.3"
      self.by-version."querystring"."0.2.0"
      self.by-version."readable-stream"."1.0.33"
    ];
    peerDependencies = [
    ];
    passthru.names = [ "docker-modem" ];
  };
  by-spec."dockerode"."~1.2.7" =
    self.by-version."dockerode"."1.2.10";
  by-version."dockerode"."1.2.10" = lib.makeOverridable self.buildNodePackage {
    name = "node-dockerode-1.2.10";
    src = [
      (fetchurl {
        url = "http://registry.npmjs.org/dockerode/-/dockerode-1.2.10.tgz";
        name = "dockerode-1.2.10.tgz";
        sha1 = "7c90343dd11ed5c4807d12fb240e917087bbbc68";
      })
    ];
    buildInputs =
      (self.nativeDeps."dockerode" or []);
    deps = [
      self.by-version."docker-modem"."0.1.19"
      self.by-version."underscore"."1.5.2"
    ];
    peerDependencies = [
    ];
    passthru.names = [ "dockerode" ];
  };
  by-spec."esprima"."~ 1.0.2" =
    self.by-version."esprima"."1.0.4";
  by-version."esprima"."1.0.4" = lib.makeOverridable self.buildNodePackage {
    name = "esprima-1.0.4";
    src = [
      (fetchurl {
        url = "http://registry.npmjs.org/esprima/-/esprima-1.0.4.tgz";
        name = "esprima-1.0.4.tgz";
        sha1 = "9f557e08fc3b4d26ece9dd34f8fbf476b62585ad";
      })
    ];
    buildInputs =
      (self.nativeDeps."esprima" or []);
    deps = [
    ];
    peerDependencies = [
    ];
    passthru.names = [ "esprima" ];
  };
  by-spec."follow-redirects"."0.0.3" =
    self.by-version."follow-redirects"."0.0.3";
  by-version."follow-redirects"."0.0.3" = lib.makeOverridable self.buildNodePackage {
    name = "node-follow-redirects-0.0.3";
    src = [
      (fetchurl {
        url = "http://registry.npmjs.org/follow-redirects/-/follow-redirects-0.0.3.tgz";
        name = "follow-redirects-0.0.3.tgz";
        sha1 = "6ce67a24db1fe13f226c1171a72a7ef2b17b8f65";
      })
    ];
    buildInputs =
      (self.nativeDeps."follow-redirects" or []);
    deps = [
      self.by-version."underscore"."1.7.0"
    ];
    peerDependencies = [
    ];
    passthru.names = [ "follow-redirects" ];
  };
  by-spec."inherits"."~2.0.1" =
    self.by-version."inherits"."2.0.1";
  by-version."inherits"."2.0.1" = lib.makeOverridable self.buildNodePackage {
    name = "node-inherits-2.0.1";
    src = [
      (fetchurl {
        url = "http://registry.npmjs.org/inherits/-/inherits-2.0.1.tgz";
        name = "inherits-2.0.1.tgz";
        sha1 = "b17d08d326b4423e568eff719f91b0b1cbdf69f1";
      })
    ];
    buildInputs =
      (self.nativeDeps."inherits" or []);
    deps = [
    ];
    peerDependencies = [
    ];
    passthru.names = [ "inherits" ];
  };
  by-spec."isarray"."0.0.1" =
    self.by-version."isarray"."0.0.1";
  by-version."isarray"."0.0.1" = lib.makeOverridable self.buildNodePackage {
    name = "node-isarray-0.0.1";
    src = [
      (fetchurl {
        url = "http://registry.npmjs.org/isarray/-/isarray-0.0.1.tgz";
        name = "isarray-0.0.1.tgz";
        sha1 = "8a18acfca9a8f4177e09abfc6038939b05d1eedf";
      })
    ];
    buildInputs =
      (self.nativeDeps."isarray" or []);
    deps = [
    ];
    peerDependencies = [
    ];
    passthru.names = [ "isarray" ];
  };
  by-spec."js-yaml"."~3.1.0" =
    self.by-version."js-yaml"."3.1.0";
  by-version."js-yaml"."3.1.0" = lib.makeOverridable self.buildNodePackage {
    name = "js-yaml-3.1.0";
    src = [
      (fetchurl {
        url = "http://registry.npmjs.org/js-yaml/-/js-yaml-3.1.0.tgz";
        name = "js-yaml-3.1.0.tgz";
        sha1 = "36ba02e618c50748e772dd352428904cbbadcf44";
      })
    ];
    buildInputs =
      (self.nativeDeps."js-yaml" or []);
    deps = [
      self.by-version."argparse"."0.1.15"
      self.by-version."esprima"."1.0.4"
    ];
    peerDependencies = [
    ];
    passthru.names = [ "js-yaml" ];
  };
  by-spec."jsonparse"."0.0.5" =
    self.by-version."jsonparse"."0.0.5";
  by-version."jsonparse"."0.0.5" = lib.makeOverridable self.buildNodePackage {
    name = "node-jsonparse-0.0.5";
    src = [
      (fetchurl {
        url = "http://registry.npmjs.org/jsonparse/-/jsonparse-0.0.5.tgz";
        name = "jsonparse-0.0.5.tgz";
        sha1 = "330542ad3f0a654665b778f3eb2d9a9fa507ac64";
      })
    ];
    buildInputs =
      (self.nativeDeps."jsonparse" or []);
    deps = [
    ];
    peerDependencies = [
    ];
    passthru.names = [ "jsonparse" ];
  };
  by-spec."lodash"."~2.4.1" =
    self.by-version."lodash"."2.4.1";
  by-version."lodash"."2.4.1" = lib.makeOverridable self.buildNodePackage {
    name = "node-lodash-2.4.1";
    src = [
      (fetchurl {
        url = "http://registry.npmjs.org/lodash/-/lodash-2.4.1.tgz";
        name = "lodash-2.4.1.tgz";
        sha1 = "5b7723034dda4d262e5a46fb2c58d7cc22f71420";
      })
    ];
    buildInputs =
      (self.nativeDeps."lodash" or []);
    deps = [
    ];
    peerDependencies = [
    ];
    passthru.names = [ "lodash" ];
  };
  by-spec."mute-stream"."~0.0.4" =
    self.by-version."mute-stream"."0.0.4";
  by-version."mute-stream"."0.0.4" = lib.makeOverridable self.buildNodePackage {
    name = "node-mute-stream-0.0.4";
    src = [
      (fetchurl {
        url = "http://registry.npmjs.org/mute-stream/-/mute-stream-0.0.4.tgz";
        name = "mute-stream-0.0.4.tgz";
        sha1 = "a9219960a6d5d5d046597aee51252c6655f7177e";
      })
    ];
    buildInputs =
      (self.nativeDeps."mute-stream" or []);
    deps = [
    ];
    peerDependencies = [
    ];
    passthru.names = [ "mute-stream" ];
  };
  by-spec."querystring"."0.2.0" =
    self.by-version."querystring"."0.2.0";
  by-version."querystring"."0.2.0" = lib.makeOverridable self.buildNodePackage {
    name = "node-querystring-0.2.0";
    src = [
      (fetchurl {
        url = "http://registry.npmjs.org/querystring/-/querystring-0.2.0.tgz";
        name = "querystring-0.2.0.tgz";
        sha1 = "b209849203bb25df820da756e747005878521620";
      })
    ];
    buildInputs =
      (self.nativeDeps."querystring" or []);
    deps = [
    ];
    peerDependencies = [
    ];
    passthru.names = [ "querystring" ];
  };
  by-spec."read"."~1.0.5" =
    self.by-version."read"."1.0.5";
  by-version."read"."1.0.5" = lib.makeOverridable self.buildNodePackage {
    name = "node-read-1.0.5";
    src = [
      (fetchurl {
        url = "http://registry.npmjs.org/read/-/read-1.0.5.tgz";
        name = "read-1.0.5.tgz";
        sha1 = "007a3d169478aa710a491727e453effb92e76203";
      })
    ];
    buildInputs =
      (self.nativeDeps."read" or []);
    deps = [
      self.by-version."mute-stream"."0.0.4"
    ];
    peerDependencies = [
    ];
    passthru.names = [ "read" ];
  };
  by-spec."readable-stream"."~1.0.26-4" =
    self.by-version."readable-stream"."1.0.33";
  by-version."readable-stream"."1.0.33" = lib.makeOverridable self.buildNodePackage {
    name = "node-readable-stream-1.0.33";
    src = [
      (fetchurl {
        url = "http://registry.npmjs.org/readable-stream/-/readable-stream-1.0.33.tgz";
        name = "readable-stream-1.0.33.tgz";
        sha1 = "3a360dd66c1b1d7fd4705389860eda1d0f61126c";
      })
    ];
    buildInputs =
      (self.nativeDeps."readable-stream" or []);
    deps = [
      self.by-version."core-util-is"."1.0.1"
      self.by-version."isarray"."0.0.1"
      self.by-version."string_decoder"."0.10.31"
      self.by-version."inherits"."2.0.1"
    ];
    peerDependencies = [
    ];
    passthru.names = [ "readable-stream" ];
  };
  by-spec."string_decoder"."~0.10.x" =
    self.by-version."string_decoder"."0.10.31";
  by-version."string_decoder"."0.10.31" = lib.makeOverridable self.buildNodePackage {
    name = "node-string_decoder-0.10.31";
    src = [
      (fetchurl {
        url = "http://registry.npmjs.org/string_decoder/-/string_decoder-0.10.31.tgz";
        name = "string_decoder-0.10.31.tgz";
        sha1 = "62e203bc41766c6c28c9fc84301dab1c5310fa94";
      })
    ];
    buildInputs =
      (self.nativeDeps."string_decoder" or []);
    deps = [
    ];
    peerDependencies = [
    ];
    passthru.names = [ "string_decoder" ];
  };
  by-spec."through".">=2.2.7 <3" =
    self.by-version."through"."2.3.6";
  by-version."through"."2.3.6" = lib.makeOverridable self.buildNodePackage {
    name = "node-through-2.3.6";
    src = [
      (fetchurl {
        url = "http://registry.npmjs.org/through/-/through-2.3.6.tgz";
        name = "through-2.3.6.tgz";
        sha1 = "26681c0f524671021d4e29df7c36bce2d0ecf2e8";
      })
    ];
    buildInputs =
      (self.nativeDeps."through" or []);
    deps = [
    ];
    peerDependencies = [
    ];
    passthru.names = [ "through" ];
  };
  by-spec."underscore"."*" =
    self.by-version."underscore"."1.7.0";
  by-version."underscore"."1.7.0" = lib.makeOverridable self.buildNodePackage {
    name = "node-underscore-1.7.0";
    src = [
      (fetchurl {
        url = "http://registry.npmjs.org/underscore/-/underscore-1.7.0.tgz";
        name = "underscore-1.7.0.tgz";
        sha1 = "6bbaf0877500d36be34ecaa584e0db9fef035209";
      })
    ];
    buildInputs =
      (self.nativeDeps."underscore" or []);
    deps = [
    ];
    peerDependencies = [
    ];
    passthru.names = [ "underscore" ];
  };
  by-spec."underscore"."1.5.x" =
    self.by-version."underscore"."1.5.2";
  by-version."underscore"."1.5.2" = lib.makeOverridable self.buildNodePackage {
    name = "node-underscore-1.5.2";
    src = [
      (fetchurl {
        url = "http://registry.npmjs.org/underscore/-/underscore-1.5.2.tgz";
        name = "underscore-1.5.2.tgz";
        sha1 = "1335c5e4f5e6d33bbb4b006ba8c86a00f556de08";
      })
    ];
    buildInputs =
      (self.nativeDeps."underscore" or []);
    deps = [
    ];
    peerDependencies = [
    ];
    passthru.names = [ "underscore" ];
  };
  by-spec."underscore"."~1.4.3" =
    self.by-version."underscore"."1.4.4";
  by-version."underscore"."1.4.4" = lib.makeOverridable self.buildNodePackage {
    name = "node-underscore-1.4.4";
    src = [
      (fetchurl {
        url = "http://registry.npmjs.org/underscore/-/underscore-1.4.4.tgz";
        name = "underscore-1.4.4.tgz";
        sha1 = "61a6a32010622afa07963bf325203cf12239d604";
      })
    ];
    buildInputs =
      (self.nativeDeps."underscore" or []);
    deps = [
    ];
    peerDependencies = [
    ];
    passthru.names = [ "underscore" ];
  };
  by-spec."underscore.string"."~2.3.1" =
    self.by-version."underscore.string"."2.3.3";
  by-version."underscore.string"."2.3.3" = lib.makeOverridable self.buildNodePackage {
    name = "node-underscore.string-2.3.3";
    src = [
      (fetchurl {
        url = "http://registry.npmjs.org/underscore.string/-/underscore.string-2.3.3.tgz";
        name = "underscore.string-2.3.3.tgz";
        sha1 = "71c08bf6b428b1133f37e78fa3a21c82f7329b0d";
      })
    ];
    buildInputs =
      (self.nativeDeps."underscore.string" or []);
    deps = [
    ];
    peerDependencies = [
    ];
    passthru.names = [ "underscore.string" ];
  };
}
