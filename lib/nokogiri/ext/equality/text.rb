# frozen_string_literal: true

require 'nokogiri'

module Nokogiri
  module XML
    class Text < CharacterData

      #
      # Determines if the text node is similar to another text node.
      #
      # @param [Nokogiri::XML::Text] other
      #   The other text node.
      #
      # @return [Boolean]
      #   Specifies if the text node is similar, in identity or value,
      #   to the other text node.
      #
      # @api public
      #
      def ==(other)
        super(other) && (self.content == other.content)
      end

    end
  end
end
