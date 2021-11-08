class AnswersController < ApplicationController
    def new
        @answer =Answer.new
    end

    def create
        @answer_params = params.require(:answer).permit(:content, :associated_question, :user_id)
      @answer = Answer.create(@answer_params)
      if @answer.save
          redirect_to answers_index_path, notice: 'Answer created succesfully'
      else
          redirect_to answers_index_path, notice: 'Error while creating the aula.
           Verify that all fields are completed and
      the name, theme, associated video and associated curso correspond to strings, 
      the duration and number correspond to a integer, and the date corresponds to a 
      date (DD-MM-YYYY). If the error persists please contact an admin'
      end
      end

    def index
        @answers = Answer.all
    end

    def show
        @answer = Answer.find(params[:id])
    end

    def edit
        @answer = Answer.find(params[:id])
    end

    def update
        @answer = Answer.find(params[:id])
    @answers_new_params = params.require(:answer).permit(:content, :associated_question, :user_id)
    if @answer.update(@answers_new_params)
        redirect_to answers_index_path, notice: 'answer edited correctly'
    else
        redirect_to answers_index_path, notice: 'Error while editing the answer. Verify that all 
        fields are completed and
      the title, description and course correspond to strings and
      the publication date corresponds to a date (DD-MM-YYYY). If the error persists please
       contact an admin'
    end
  end

    def delete
        @answer = Answer.find(params[:id])
      @answer.destroy
      redirect_to answers_index_path, notice: 'answer nicely destroyed'
    end
end
