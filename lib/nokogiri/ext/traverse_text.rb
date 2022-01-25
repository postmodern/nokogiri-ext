require 'nokogiri'

module Nokogiri
  module XML
    class Node

      #
      # Traverses all text nodes which are children of the node.
      #
      # @yield [node]
      #   A block will be passed each text node.
      #
      # @yieldparam [Nokogiri::XML::Text] node
      #   A text node.
      #
      # @return [Enumerator]
      #   If no block is given, an Enumerator object will be returned.
      #
      # @api public
      #
      def traverse_text
        return enum_for(:traverse_text) unless block_given?

        yield self if text?

        traverse do |node|
          yield node if node.text?
        end
      end

    end
  end
end
