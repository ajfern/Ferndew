class Todew < ActiveRecord::Base
  validates :completed, :inclusion => { :in => [true, false] }
  validates :content, :presence => true
  
  # Homework:
  # * With validations, figure out how ensure that content is unique
  # * Also, figure out how to gracefully check if a new Todew will fail validations
  # * Figure out how to display an error message as a result of a failed validation
end
