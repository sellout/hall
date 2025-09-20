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
    treefmt.enable = true;
    vale.enable = true;
  };
  project.file.".dir-locals.el".source = ../emacs/.dir-locals.el;

  ## CI
  services.garnix.enable = true;
  ## When Renovate opens a lock file update, run `project-manager switch` and
  ## push the new commit to the PR branch.
  services.github.workflow."switch-pm-generation.yml".text = lib.generators.toYAML {} {
    name = "Project Manager";
    on.pull_request = {
      branches = ["renovate/lock-file-maintenance"];
      types = ["opened"];
    };
    jobs.switch = {
      runs-on = "ubuntu-24.04";
      steps = [
        {uses = "actions/checkout@v5";}
        {run = "project-manager switch";}
        {
          name = "commit changes";
          uses = "EndBug/add-and-commit@v9";
          "with" = {
            add = "--all";
            default_author = "github_actions";
            message = "Switch Project Manager generation";
          };
        }
      ];
    };
  };

  ## publishing
  services.flakehub.enable = true;
  services.github.enable = true;
  services.github.settings.repository.topics = ["library"];
}
