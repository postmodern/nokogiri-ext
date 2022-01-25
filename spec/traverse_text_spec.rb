require 'spec_helper'
require 'nokogiri/ext/traverse_text'

describe "nokogiri/ext/traverse_text" do
  before(:all) do
    @doc = Nokogiri::HTML(%{<html><head><title>test</title></head><body><p><b>This is a test</b> html <i>page</i>.</p></body></html>})

    @edited_doc = Nokogiri::HTML(%{<html><head><title>test</title></head><body><p><b>This is a test</b> html page.</p></body></html>})
  end

  it "should be able to traverse over every text node" do
    text = []

    @doc.traverse_text { |node| text << node.content }

    expect(text).to eq(['test', 'This is a test', ' html ', 'page', '.'])
  end
end
