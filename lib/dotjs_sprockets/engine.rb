require "execjs"

module DotjsSprockets

  # The engine class is in charge to handle the template compilation
  # via ExecJS, provides a clean interface to be used by the TiltDot class
  #
  # @since 0.1.0
  class Engine
    class << self

      # Given a path to a template it returns the compiled version
      #
      # @param full_path [String] the template full path
      #
      # @return [String] JavaScript function that may be directly executed client-side
      #
      # @example Compiling a Template
      #   DotjsSprockets::Engine.precompile("/my/template.jst.djs")
      #   # => "function()...."
      #
      # @since 0.1.0
      def precompile(full_path)
        template = open(full_path).read.chomp
        context.eval("doT.compile('#{template}').toString()")
      end

    private

      # Stores a ExecJS context instance
      #
      # @return [ExecJS::ExternalRuntime::Context]
      #
      # @since 0.1.0
      def context
        @context ||= ExecJS.compile(source)
      end

      # Stores the full path of the library source (doT.js)
      #
      # @return [String] full path of the doT.js library
      #
      # @since 0.1.0
      def path
        @path ||= File.expand_path(DotjsSprockets::ASSETS_PATH, __FILE__)
      end

      # Stores the contents of the library source (doT.js)
      #
      # @return [String] full content of the doT.js library
      #
      # @since 0.1.0
      def source
        @source ||= open("#{path}/doT.js").read
      end
    end
  end
end
