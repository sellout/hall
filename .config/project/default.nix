### All available options for this file are listed in
### https://sellout.github.io/project-manager/options.xhtml
{pkgs, ...}: {
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

  ## These are Dhall, not prose.
  programs.vale.excludes = ["./templates/hpack/*"];

  ## publishing
  services.github.settings.repository.private = false;
  services.github.settings.repository.topics = ["library"];
}
