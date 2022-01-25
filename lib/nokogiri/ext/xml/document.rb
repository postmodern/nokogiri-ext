#
# nokogiri-ext - Useful extensions for nokogiri.
#
# Copyright (c) 2006-2021 Hal Brodigan (postmodern.mod3 at gmail.com)
#
# This file is part of nokogiri-ext.
#
# nokogiri-ext is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# nokogiri-ext is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with nokogiri-ext.  If not, see <https://www.gnu.org/licenses/>.
#

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
      def total_children
        if root
          1 + root.total_children
        else
          0
        end
      end

    end
  end
end
