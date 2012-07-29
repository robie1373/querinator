require_relative "spec_helper"

module Querinator
  describe Query do
    it "creates an instance of query" do
      Query.new.must_be_instance_of Query
    end

    it "must ask me a question" do
      Query.new.must_respond_to :pose
    end

    it "must not fail" do
      (10).must_equal 10
    end

  end
end
