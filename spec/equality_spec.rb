require 'spec_helper'
require 'nokogiri/ext/equality'

describe "nokogiri/ext/equality" do
  before(:all) do
    @doc = Nokogiri::HTML(%{<html><head><title>test</title></head><body><p><b>This is a test</b> html <i>page</i>.</p></body></html>})

    @edited_doc = Nokogiri::HTML(%{<html><head><title>test</title></head><body><p><b>This is a test</b> html page.</p></body></html>})
  end

  it "should be able to test if two elements are equal" do
    elem1 = @doc.at('b')
    elem2 = @edited_doc.at('b')

    expect(elem1).to eq(elem2)
  end

  it "should be able to test if two elements are not equal" do
    elem1 = @doc.at('p').children.last
    elem2 = @edited_doc.at('b')

    expect(elem1).not_to eq(elem2)
  end
end
