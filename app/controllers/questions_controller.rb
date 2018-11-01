class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:user_question]
    if @question == "are you hungry"
      @answer = "always"
    else
      @answer = "google it"
    end
  end
end
