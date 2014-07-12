require "tilt"

module DotjsSprockets
  # New tilt template declaration, from the tilt docs:
  # Base class for template implementations Subclasses must implement
  # the #prepare method and one of the #evaluate or #precompiled_template
  # methods.
  #
  # More info here: https://github.com/rtomayko/tilt/blob/master/lib/tilt/template.rb
  #
  # @since 0.1.0
  class TiltDot < Tilt::Template
    def self.default_mime_type
      "application/javascript"
    end

    def prepare
    end

    def evaluate(scope, locals, &block)
      template_name = scope.pathname
      DotjsSprockets::Engine.precompile(template_name)
    end
  end
end
