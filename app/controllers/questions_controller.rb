class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:user_question]
    if @question == "should I hire william?"
      @answer = "of course, what are you waiting for?"
    else
      @answer = "google it"
    end
  end
end
