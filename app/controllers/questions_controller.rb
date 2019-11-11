class QuestionsController < ApplicationController
ANSWERS = ['Talk to your coach:', 'Silly question, get dressed and go to work!', 'Great!', "I don't care, get dressed and go to work!"]

  def ask
    @banana = "fruit"
  end

  def answer
    @question = params[:question]
    if @question.blank?
      @answer = ANSWERS[0]
    elsif @question.include? '?'
      @answer = ANSWERS[1]
    elsif @question == 'I am going to work right now!'
      @answer = ANSWERS[2]
    else
      @answer = ANSWERS[3]
    end
  end
end
