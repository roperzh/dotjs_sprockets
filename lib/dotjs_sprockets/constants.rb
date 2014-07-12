# Configuration constants, all of these are accessible from outside
#
# @since 0.1.0
module DotjsSprockets
  # Local gem assets
  #
  # Version 0.1.0 includes doT.js v1.0.1
  ASSETS_PATH = "../../../vendor/assets/javascripts/dotjs_sprockets"

  # Extension for the templates, sprockets will find and precompile all files
  # with DotjsSprockets::EXTENSION
  #
  # This can be changed from the outside:
  #
  # DotjsSprockets::EXTENSION = ".dotjs"
  #
  # @since 0.1.0
  EXTENSION   = ".djs"

  # Current version
  VERSION     = "0.1.1"
end
