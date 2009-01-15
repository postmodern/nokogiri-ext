require 'ronin/web/extensions/nokogiri'

require 'spec_helper'
require 'nokogiri'

describe Nokogiri::HTML do
  before(:all) do
    @doc = Nokogiri::HTML(%{<html><head><title>test</title></head><body><p><b>This is a test</b> html <i>page</i>.</p></div></body></html>})

    @edited_doc = Nokogiri::HTML(%{<html><head><title>test</title></head><body><p><b>This is a test</b> html page.</p></div></body></html>})
  end

  it "should be able to test if two elements are equal" do
    elem1 = @doc.at('b')
    elem2 = @edited_doc.at('b')

    (elem1 == elem2).should == true
  end

  it "should be able to test if two elements are not equal" do
    elem1 = @doc.at('p').children.last
    elem2 = @edited_doc.at('b')

    (elem1 == elem2).should == false
  end

  it "should be able to compare two elements" do
    elem1 = @doc.at('p')
    elem2 = @edited_doc.at('p')

    (elem1 > elem2).should == true
    (elem2 < elem1).should == true
  end

  it "should be able to iterate over every child" do
    children = []

    @doc.every_child { |child| children << child }

    children.length.should == 13
  end

  it "should be able to iterate over every text node" do
    text = []

    @doc.all_text { |node| text << node.content }

    text.should == ['test', 'This is a test', ' html ', 'page', '.']
  end

  it "should provide a count of all sub-children" do
    @doc.count_children.should == 13
  end

  it "should be able to test if two Hpricot documents are equal" do
    (@doc == @doc).should == true
  end

  it "should be able to compare two Hpricot documents" do
    (@doc > @edited_doc).should == true
    (@edited_doc < @doc).should == true
  end
end
