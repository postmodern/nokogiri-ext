# nokogiri-ext

[![CI](https://github.com/postmodern/nokogiri-ext/actions/workflows/ruby.yml/badge.svg)](https://github.com/postmodern/nokogiri-ext/actions/workflows/ruby.yml)
[![Gem Version](https://badge.fury.io/rb/fake_io.svg)](https://badge.fury.io/rb/fake_io)

* [Source](https://github.com/postmodern/nokogiri-ext)
* [Issues](https://github.com/postmodern/nokogiri-ext/issues)
* [Documentation](http://rubydoc.info/gems/fake_io/frames)

## Description

nokogiri-ext is a collection of useful extensions to nokogiri.

## Features

* Adds an `==` method to {Nokogiri::XML::Element}, {Nokogiri::XML::Attr},
  {Nokogiri::XML::Text}, {Nokogiri::XML::Node}.
* Adds a `total_children` to {Nokogiri::XML::Document} and
  {Nokogiri::XML::Node}.
* Adds {Nokogiri::XML::Node#traverse_text}.

## Requirements

* [nokogiri] ~> 1.0

## Install

```shell
$ gem install nokogiri-ext
```

### gemspec

```ruby
gem.add_dependency 'nokogiri-ext', '~> 1.0'
```

### Gemfile

```ruby
gem 'nokogiri-ext', '~> 1.0'
```

## Examples

### ==

Compare the contents of two XML/HTML elements:

```ruby
doc1.at('//node') == doc2.at('//node')
```

Comparing the contents of two XML/HTML documents:

```ruby
doc1 == doc2
```

### total_children

Count the total number of elements under a XML/HTML element:

```ruby
doc.at('//node').total_children
# => 7
```

Count the total number of elements within a XML/HTML document:

```ruby
doc.total_children
# => 42
```

### traverse_text

Traverses all text nodes in a XML/HTML document or node:

```ruby
doc.traverse_text do |text|
  puts text
end
```

## Copyright

Copyright (c) 2009-2021 Hal Brodigan

See {file:LICENSE.txt} for details.

[nokogiri]: https://github.com/sparklemotion/nokogiri#readme
