{config, flaky, lib, pkgs, supportedSystems, ...}: {
  project = {
    name = "hall";
    summary = "The corridor connecting Dhall and Haskell";

    devPackages = [
      pkgs.dhall
      pkgs.dhall-docs
      pkgs.dhall-lsp-server
    ];
  };

  ## dependency managerment
  services.renovate.enable = true;

  ## development
  programs = {
    direnv.enable = true;
    # This should default by whether there is a .git file/dir (and whether it’s
    # a file (worktree) or dir determines other things – like where hooks
    # are installed.
    git.enable = true;
  };

  ## formatting
  editorconfig.enable = true;
  programs = {
    treefmt = {
      enable = true;
      programs.dhall.enable = true;
      settings.formatter.dhall.includes = ["dhall/*"];
    };
    vale = {
      enable = true;
      excludes = [
        "./.config/emacs/.dir-locals.el"
        "./.dir-locals.el"
        "./.gitattributes"
        "./.github/settings.yml"
        "./dhall/*"
      ];
      vocab.${config.project.name}.accept = [
        "Dhall"
      ];
    };
  };
  project.file.".dir-locals.el".source = lib.mkForce ../emacs/.dir-locals.el;

  ## CI
  services.garnix = {
    enable = true;
    builds.exclude = [
      # TODO: Remove once garnix-io/garnix#285 is fixed.
      "homeConfigurations.x86_64-darwin-example"
    ];
  };
  ## FIXME: Shouldn’t need `mkForce` here (or to duplicate the base contexts).
  ##        Need to improve module merging.
  services.github.settings.branches.main.protection.required_status_checks.contexts =
    lib.mkForce
      (flaky.lib.forGarnixSystems supportedSystems (sys: [
        "homeConfig ${sys}-${config.project.name}-example"
        "package default [${sys}]"
        "package ${config.project.name} [${sys}]"
        ## FIXME: These are duplicated from the base config
        "check formatter [${sys}]"
        "check project-manager-files [${sys}]"
        "check vale [${sys}]"
        "devShell default [${sys}]"
      ]));

  ## publishing
  imports = [(import ./github-pages.nix config.project.name)];
  programs.git.attributes = ["/dhall/** linguist-language=Dhall"];
  services.flakehub.enable = true;
  services.github.enable = true;
  services.github.settings.repository = {
    homepage = "https://sellout.github.io/${config.project.name}";
    topics = ["library"];
  };
}
