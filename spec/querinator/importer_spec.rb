require_relative '../spec_helper'
module Querinator
  describe Importer do
     def setup
       @file_importer = Importer.new
       @file_name     = "./spec/test_question_file.txt"
     end

     describe "#import" do
       it "must try to import qna data" do
         Importer.new.must_respond_to :import
       end
     end

     #describe "read data from file" do
     #it "must read data in from a file" do
     #  skip("I don't think I need this method. It's functionality was moved to parse.")
     #  @file_importer.read(@file_name).must_equal (File.open(@file_name) { |f| f.readlines })
     #end
     #end

     describe "#parse data" do
       it "must parse the data into an array." do
         #@file_importer.read(@file_name)
         @file_importer.parse(@file_name).must_be_instance_of Array
       end

       it "must parse the data into an array of Query objects" do
         Importer.new.parse(@file_name).must_be_instance_of Array
         Importer.new.parse(@file_name)[0].must_be_instance_of Query
       end
     end

     describe "#question_pool" do
       def setup
         @importer  = Importer.new
         @file_name = "./spec/test_question_file.txt"
         @importer.parse(@file_name)
       end

       # This is repetitive because it is just a convenience function to make things more readable.
       it "must return an array" do

         @importer.question_pool.must_be_instance_of Array
       end

       it "must return an array of Query objects" do
         @importer.question_pool.each do |query|
           query.must_be_instance_of Query
         end
       end
     end
   end

end