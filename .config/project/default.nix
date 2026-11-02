{
  config,
  flaky,
  lib,
  pkgs,
  supportedSystems,
  ...
}: {
  project = {
    name = "hall";
    summary = "The corridor connecting Dhall and Haskell";

    devPackages = [
      pkgs.dhall
      pkgs.dhall-docs
      pkgs.dhall-lsp-server
    ];
  };

  ## formatting
  project.file.".dir-locals.el".source = ../emacs/.dir-locals.el;

  ## publishing
  services.github.settings.repository.private = false;
  services.github.settings.repository.topics = ["library"];
}
