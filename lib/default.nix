let 

  trivial = import ./trivial.nix;
  lists = import ./lists.nix;
  strings = import ./strings.nix;
  stringsWithDeps = import ./strings-with-deps.nix;
  attrsets = import ./attrsets.nix;
  sources = import ./sources.nix;
  modules = import ./modules.nix;
  options = import ./options.nix;
  types = import ./types.nix;
  meta = import ./meta.nix;
  debug = import ./debug.nix;
  misc = import ./deprecated.nix;
  maintainers = import ./maintainers.nix;
  platforms = import ./platforms.nix;
  systems = import ./systems.nix;
  customisation = import ./customisation.nix;
  licenses = import ./licenses.nix;
  sandbox = import ./sandbox.nix;

in
  { inherit trivial lists strings stringsWithDeps attrsets sources options
      modules types meta debug maintainers licenses platforms systems sandbox;
  }
  # !!! don't include everything at top-level; perhaps only the most
  # commonly used functions.
  // trivial // lists // strings // stringsWithDeps // attrsets // sources
  // options // types // meta // debug // misc // modules
  // systems
  // customisation
