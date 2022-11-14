class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    # if no question, answer "I don't care, get dressed and go to work!"
    # if question, answer "Silly question, get dressed and go to work!"
    # if question = "I am going to work right now!", answer ""
    if @question.downcase == 'i am going to work'
      @answer = 'Great!'
    elsif @question.downcase.end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
