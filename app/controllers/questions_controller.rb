class QuestionsController < ApplicationController
  def ask
    @ask = params[:questions]
  end

  def answer
    @ask = params[:questions]
      if @ask == "I am going to work"
        @answer = "Great"
      elsif @ask.include? '?'
        @answer = "Silly question, get dressed and go to work!"
      else @answer = "I don't care, get dressed and go to work!"
      end
  end
end
