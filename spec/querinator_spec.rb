require_relative "spec_helper"

module Querinator
  describe Qory do
    it "creates an instance of query" do
      Qory.new.must_be_instance_of Qory
    end

    it "must ask me a question" do
      Qory.new.must_respond_to :pose
    end

    it "must fail" do
      (10).must_equal 11
    end

  end
end
