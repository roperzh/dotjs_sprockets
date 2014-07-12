require "dotjs_sprockets/constants"
require "dotjs_sprockets/engine"
require "dotjs_sprockets/tilt_dot"

Sprockets.register_engine ::DotjsSprockets::EXTENSION, DotjsSprockets::TiltDot
