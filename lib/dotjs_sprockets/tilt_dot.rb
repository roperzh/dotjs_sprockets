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
    # Define the mime type of the template
    #
    # @since 0.1.0
    def self.default_mime_type
      "application/javascript"
    end

    # Required method definition in order to implement the Tilt::Template
    # interface
    #
    # @since 0.1.0
    def prepare
    end

    # Execute the compiled template and return the result string
    #
    # @return [String] the compiled template
    #
    # @since 0.1.0
    def evaluate(scope, locals, &block)
      template_name = scope.pathname
      DotjsSprockets::Engine.precompile(template_name)
    end
  end
end
