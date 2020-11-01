class ApplicationController < ActionController::Base
  before_action :set_variables

  def set_variables
    question_count = Question.count
    @rounds = (question_count / 10).floor
    @bonus = question_count % 10
  end

end
