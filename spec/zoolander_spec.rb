require 'spec_helper'

describe Zoolander do

  it "should load quotes from the yml file" do
    Zoolander::Helpers::QUOTES.class.should be Array
  end

  it "should dish out awesome quotes" do

    class ZoolanderTest
      include Zoolander::Helpers
    end

    test = ZoolanderTest.new
    puts test.zoolander_quote
    test.zoolander_quote.class.should be String

  end

end