class SurveysController < ApplicationController

  def index
    @surveys = Survey.all
  end

  def new
    @survey = Survey.new
    @question = Question.new
    @answer = Answer.new

    @survey.questions << @question
    @question.answers << @answer
  end

  def create
    @survey = Survey.create(params[:survey])
    redirect_to surveys_path
  end

end
