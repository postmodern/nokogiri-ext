require 'nokogiri'

module Nokogiri
  module XML
    class Node

      #
      # Determines if the node is similar to another node.
      #
      # @return [Boolean]
      #   Specifies whether the node is equal, in identity or value, to
      #   another node.
      #
      # @api public
      #
      def ==(other)
        return false unless other

        (self.type == other.type) && (self.name == other.name)
      end

    end
  end
end
