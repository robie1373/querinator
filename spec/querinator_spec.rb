require_relative "spec_helper"

module Querinator
  describe Query do
    def setup
      @query          = Query.new({ :question => "Do you get Tom Servo?" })
      @test_questions = [
          [{ question: "Do you get Tom Servo?",
                answer:   "No one does. I'm like the wind baby." },
              { wrong_answer: "Yeah. Sure." }],

          [{ question: "Was there ever a monster?",
             answer:   "We will never speak of this movie again." },
           { wrong_answer: "No." }]
      ]
      #@queries = @test_questions.each { |qa| Query.new(qa[0][:question], qa[0][:answer]) }
    end

    it "creates an instance of query" do
      @query.must_be_instance_of Query
    end

    describe "#pose" do
      it "must try to ask a question" do
        @query.must_respond_to :pose
      end

      it "must ask the question it was instantiated with" do
        @test_questions.each do |question|
          query = Query.new(:question => question[0][:question], :answer => question[0][:answer])
          query.pose.must_equal question[0][:question]
        end
      end
    end

    describe "#is_correct?" do
      it "must try to decide if my answer is correct" do
        @query.must_respond_to :is_correct?
      end

      it "must reply TRUE if the answer is correct" do
        @test_questions.each do |question|
          query = Query.new(:question => question[0][:question], :answer => question[0][:answer])
          query.is_correct?(question[0][:answer]).must_equal TRUE
        end
      end

      it "must reply FALSE if the answer is incorrect" do
        @test_questions.each do |question|
          query = Query.new(:question => question[0][:question], :answer => question[0][:answer])
          query.is_correct?(question[0][:wrong_answer]).must_equal FALSE
        end
      end
    end

    describe "#answer" do
      it "must tell the right answer when asked." do
        @test_questions.each do |question|
          query = Query.new(:question => question[0][:question], :answer => question[0][:answer])
          query.answer.must_equal question[0][:answer]
        end
      end
    end
  end

  describe Importer do
    describe "#import" do
      it "must try to import qna data" do
        Importer.new.must_respond_to :import
      end
    end

  end


end
