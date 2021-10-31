class QuestionsController < ApplicationController
  def ask
    @question
  end

  def answer
    @answer = []

    if params[:question] == 'I am going to work'
      # @answer = @answer.select { |member| member == params[:member] }
      @answer = 'Great!'
    elsif params[:question].include? '?'
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = 'I don`t care, get dressed and go to work!'
    end
  end
end
