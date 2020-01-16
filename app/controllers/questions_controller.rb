class QuestionsController < ApplicationController
  def ask
  end

  def answer
    # raise
    @user_question = params[:question]
    if @user_question == 'I am going to work'
      @coach = 'Great!'
    elsif @user_question.to_s.include?('?')
      @coach = 'Silly question, get dressed and go to work!'
    else
      @coach = 'I don\'t care, get dressed and go to work!'
    end
  end
end
