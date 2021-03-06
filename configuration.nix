{ config, pkgs, ... }:

{
  imports =
    [ 
      ./machines/laptop.nix

      ./hardware/hardware-configuration.nix

      ./desktop-environment.nix
      ./network.nix
      ./packages/default.nix
      ./system.nix
      ./user.nix

      ./cachix.nix
    ];

  # This value determines the NixOS release with which your system is to be
  # compatible, in order to avoid breaking some software such as database
  # servers. You should change this only after NixOS release notes say you
  # should.
  # system.autoUpgrade.enable = true;
  system.stateVersion = "20.03"; # Did you read the comment?

}
