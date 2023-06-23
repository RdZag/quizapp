# frozen_string_literal: true

class HomeController < ApplicationController
  def index; end

  def questions; end

  def users; end

  def quiz
    @questions = Question.all
  end

  def flag; end

  def submit
    @questions = Question.includes(:answers)
    @user = User.find(3) # find_or_create_by(email: params[email])

    total_correct = 0

    @questions.each do |question|
      selected_answer_id = params["question_#{question.id}"].to_i
      answer = question.answers.find_by(id: selected_answer_id)

      total_correct += 1 if answer&.correct?
    end
    @user.update(score: total_correct)

    redirect_to result_path
  end

  def result
    @user = User.find(3) # find_by(email: params[email])#find(6)#_by(email: params[:email])
  end
end
