class QuizzesController < ApplicationController
  before_action :set_quiz, only: [:show, :answer]

  def index
    @quizzes = Quiz.order(id: :desc).page(params[:page] || 1).per(10)
  end

  def show
  end

  def answer
    if @quiz.valid_answer?(params[:answer])
      flash[:success] = 'Answer is correct'
    else
      flash[:alert] = 'Answer is incorrect'
    end
    render :show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quiz
      begin
        @quiz = Quiz.find(params[:id])
      rescue
        redirect_to quizzes_path, alert: 'Quiz not found'
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def quiz_params
      params.fetch(:quiz, {})
    end
end
