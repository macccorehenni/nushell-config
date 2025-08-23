# config.nu
#
# Installed by:
# version = "0.106.1"
#
# This file is used to override default Nushell settings, define
# (or import) custom commands, or run any other startup tasks.
# See https://www.nushell.sh/book/configuration.html
#
# Nushell sets "sensible defaults" for most configuration settings, 
# so your `config.nu` only needs to override these defaults if desired.
#
# You can open this file in your default editor using:
#     config nu
#
# You can also pretty-print and page through the documentation for configuration
# options using:
#     config nu --doc | nu-highlight | less -R
################################################################################
# define vars— all functions are defined in ($nu.data-dir)/autorun/functions.nu (hereby called "functiond"
# added to by the functiond/add-to-path function
$env.PATH = ($env.PATH | append "C:/Users/CReape/git/bin")
#aliases to different places on my system that I use quite a bit
$env.jumpto = {
project-the-ten: ($nu.home-path | path join "ten-stories")
config-folder: $nu.data-dir
iCloud: ($nu.home-path | path join "iCloudDrive")
autoload-folder: ($nu.data-dir | path join "autoload")
iCloud-Photos: ($nu.home-path | path join "iCloudPhotos")
}