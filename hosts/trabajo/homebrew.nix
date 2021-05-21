{
  homebrew.enable = true;
  homebrew.autoUpdate = true;
  homebrew.cleanup = "zap";
  homebrew.global.brewfile = true;
  homebrew.global.noLock = true;

  homebrew.taps = [
    "homebrew/cask"
    "homebrew/cask-versions"
  ];

  homebrew.brews = [
    "mas"
    "postgres"
  ];

  homebrew.casks = [
    #"deckset"
    #"docker"
    "firefox-developer-edition"
    "flux"
    "google-chrome"
    "iterm2"
    "netnewswire"
    "oversight"
    #"pgadmin4"
    "postico"
    #"psequel"
    "slack"
    "spotify"
    #"tableplus"
    #"virtualbox"
    #"virtualbox-extension-pack"
    "zoom"
  ];

  homebrew.masApps = {
    "1Password" = 1333542190;
    Hush = 1544743900;
    "Just Focus" = 1142151959;
    Keynote = 409183694;
    Kindle = 405399194;
    Medis = 1063631769;
    Xcode = 497799835;
  };

  homebrew.extraConfig = ''
    cask_args appdir: "~/Applications"
  '';
}
