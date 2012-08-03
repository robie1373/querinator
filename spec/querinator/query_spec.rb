module Querinator
  describe Query do
    def setup
      @query          = Query.new({ :question => "Do you get Tom Servo?", :answer => "Nobody does. I'm like the wind baby." })
      @query_src0     = { :question      => "Do you get Tom Servo?",
                          :answer        => "No one does. I'm like the wind baby.",
                          :times_seen    => 21,
                          :times_correct => 4 }
      @query_src1     = { :question      => "Was there ever a monster?",
                          :answer        => "We will never speak of this movie again.",
                          :times_seen    => 8,
                          :times_correct => 140 }
      @test_questions = [Query.new(@query_src0), Query.new(@query_src1)]
      #@queries = @test_questions.each { |qa| Query.new(qa[0][:question], qa[0][:answer]) }
    end

    it "creates an instance of query" do
      @query.must_be_instance_of Query
    end

    describe "#pose" do
      it "must try to ask a question" do
        @query.must_respond_to :pose
      end
    end

    describe "#is_correct?" do
      it "must try to decide if my answer is correct" do
        @query.must_respond_to :is_correct?
      end

      it "must reply TRUE if the answer is correct" do
        @test_questions.each do |question|
          question.is_correct?(question.answer).must_equal TRUE
        end
      end

      it "must reply FALSE if the answer is incorrect" do
        @test_questions.each do |question|
          question.is_correct?("foo is not the answer").must_equal FALSE
        end
      end
    end

    describe "#answer" do
      it "must tell the right answer when asked." do
        @test_questions[0].answer.must_equal "No one does. I'm like the wind baby."
        @test_questions[1].answer.must_equal "We will never speak of this movie again."
      end
    end

    describe "#times_correct" do
      it "must tell me how many times this question was answered correctly" do
        @test_questions.each do |question|
          question.times_correct.must_be_instance_of Fixnum
        end
      end

      it "must let me increment times correct" do
        @test_questions.each_with_index do |question, index|
          old_value              = (eval "@query_src" + index.to_s)[:times_correct]
          question.times_correct += 1
          new_value              = question.times_correct
          new_value.must_equal (old_value += 1)
        end
      end

      it "must be set when you instantiate the query" do
        @test_questions.each_with_index do |question, index|
          question.times_correct.must_equal (eval "@query_src" + index.to_s)[:times_correct]
        end
      end
    end

    describe "#times_seen" do
      it "must tell me how many times this question has been seen" do
        @test_questions.each do |question|
          question.times_seen.must_be_instance_of Fixnum
        end
      end

      it "must let me increment times seen" do
        @test_questions.each_with_index do |question, index|
          old_value           = (eval "@query_src" + index.to_s)[:times_seen]
          question.times_seen += 1
          new_value           = question.times_seen
          new_value.must_equal (old_value += 1)
        end
      end

      it "must be set when you instantiate the query" do
        @test_questions.each_with_index do |question, index|
          question.times_seen.must_equal (eval "@query_src" + index.to_s)[:times_seen]
        end
      end
    end
  end

end