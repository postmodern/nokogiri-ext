require 'spec_helper'
require 'nokogiri/ext/traverse_count'

describe "nokogiri/ext/traverse_count" do
  before(:all) do
    @doc = Nokogiri::HTML(%{<html><head><title>test</title></head><body><p><b>This is a test</b> html <i>page</i>.</p></body></html>})

    @edited_doc = Nokogiri::HTML(%{<html><head><title>test</title></head><body><p><b>This is a test</b> html page.</p></body></html>})
  end

  it "should provide a count of all sub-children" do
    expect(@doc.traverse_count).to eq(12)
  end
end
