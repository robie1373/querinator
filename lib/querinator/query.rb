module Querinator
  class Query
     def initialize (args)
       @question = args[:question]
       @answer   = args[:answer]
       @times_correct = args[:times_correct]
       @times_seen = args[:times_seen]
     end

     def pose
       @question
     end

     def is_correct?(response)
       response == @answer ? TRUE : FALSE
     end

     def answer
       @answer
     end

     def times_correct
       @times_correct
     end

     def times_correct=(value)
       @times_correct = value
     end

     def times_seen
       @times_seen
     end

     def times_seen=(value)
       @times_seen = value
     end
   end

end