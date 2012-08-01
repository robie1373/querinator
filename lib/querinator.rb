require "querinator/version"

module Querinator
  class Query
    def initialize (args)
      @question = args[:question]
      @answer   = args[:answer]

    end

    def pose
      @question
    end

    def is_correct?(response)
      if response == @answer
        TRUE
      else
        FALSE
      end
    end

    def answer
      @answer
    end
  end

  class Importer
    def import

    end

  end

end

