# frozen_string_literal: true

require 'nokogiri'

module Nokogiri
  module XML
    class Document < Node

      #
      # Calculates the sum of all sub-children of the document.
      #
      # @return [Integer]
      #   The total number of children and sub-children of the document.
      #   Returns `0` if the document has no root element.
      #
      # @api public
      #
      def traverse_count
        if root
          1 + root.traverse_count
        else
          0
        end
      end

    end
  end
end
