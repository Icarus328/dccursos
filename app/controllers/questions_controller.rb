class QuestionsController < ApplicationController
    def new
        @question = Question.new
    end

    def create
        @questions_params = params.require(:question).permit(:title, :description, :course, 
                                                             :publication_date, :user_id)
      @question = Question.create(@questions_params)
      if @question.save
          redirect_to questions_index_path, notice: 'question successfully created'
      else
          redirect_to questions_index_path, notice: 'Error while creating the question. 
          Verify that all fields are completed and
          the title, description and course correspond to strings and
          the publication date corresponds to a date (DD-MM-YYYY). If the error persists
           please contact an admin'
      end
    end

    def index
        @questions = Question.all
    end

    def show
        @question = Question.find(params[:id])
    end

    def edit
        @question = Question.find(params[:id])
    end

    def update
        @question = Question.find(params[:id])
      @questions_new_params = params.require(:question).permit(:content, :associated_question,
                                                               :course, 
                                                               :publication_date, :user_id)
      if @question.update(@questions_new_params)
          redirect_to questions_index_path, notice: 'question edited correctly'
      else
          redirect_to questions_index_path, notice: 'Error while editing the question. 
          Verify that all fields are completed and
          the title, description and course correspond to strings and
          the publication date corresponds to a date (DD-MM-YYYY). If the error persists
          please contact an admin'
      end
    end

    def delete
        @question = Question.find(params[:id])
      @question.destroy
      redirect_to questions_index_path, notice: 'question nicely destroyed'
    end
end
