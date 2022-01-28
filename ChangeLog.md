### 0.1.0 / 2022-01-28

* Initial release:
  * Requires [Ruby] >= 2.6.0
  * Requires [nokogiri] ~> 1.0
  * Added `nokogiri/ext/equality` which adds a `==` operator to
    {Nokogiri::XML::Element}, {Nokogiri::XML::Attr}, {Nokogiri::XML::Text},
    {Nokogiri::XML::Node}.
  * Added `nokogiri/ext/traverse_count` which adds a `traverse_count` method to
    {Nokogiri::XML::Document} and {Nokogiri::XML::Node}.
  * Added `nokogiri/ext/traverse_text` which adds the
    {Nokogiri::XML::Node#traverse_text} method.

[Ruby]: https://www.ruby-lang.org/
[nokogiri]: https://github.com/sparklemotion/nokogiri#readme
