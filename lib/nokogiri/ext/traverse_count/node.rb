require 'nokogiri'

module Nokogiri
  module XML
    class Node

      #
      # Calculates the sum of all children of the node.
      #
      # @return [Integer]
      #   The total number of children of the node.
      #
      # @api public
      #
      def traverse_count
        count = 0

        traverse { |node| count += 1 }

        return count - 1
      end

    end
  end
end
