module Querinator
  class Importer

    def parse(path)
      @query_objects = []
      json_input     = JSON.parse(IO.read(path), opts = { :symbolize_names => TRUE })
      json_input.each do |json_question|
        @query_objects << Query.new(:question => json_question[:question], :answer => json_question[:answer])
      end
      @query_objects
    end

    def question_pool
      @query_objects
    end

  end
end