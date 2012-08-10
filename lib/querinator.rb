require 'json'
require "querinator/version"
require 'querinator/importer'
require 'querinator/query'

module Querinator
  class Game

    def get_questions(file_name)
      file_name ||= "./spec/test_question_file.txt"
      Importer.new.parse(file_name)
    end
  end


end

